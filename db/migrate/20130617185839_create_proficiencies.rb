class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :skill
      t.references :user
      t.integer     :proficiency , :default => 0

      t.timestamps
    end
  end
end
