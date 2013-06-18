class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiencies

  def proficiency_for(skill)
    id = Skill.find_by_id(skill.id)
    self.proficiencies.find_by_skill_id(id).proficiency
  end

  def set_proficiency_for(skill, level)
    id = Skill.find_by_id(skill.id)
    prof = self.proficiencies.find_by_skill_id(id)
    prof.proficiency = level
    prof.save
  end

  def 

end
