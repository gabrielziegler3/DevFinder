class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :company
      t.text :description
      t.string :skill
      t.integer :peopleWorking
      t.integer :peopleNeeded

      t.timestamps
    end
  end
end
