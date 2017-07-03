class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.integer :free_time
      t.string :skills

      t.timestamps
    end
  end
end
