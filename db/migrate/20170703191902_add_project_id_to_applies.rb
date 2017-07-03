class AddProjectIdToApplies < ActiveRecord::Migration[5.0]
  def change
    add_column :applies, :project_id, :integer
  end
end
