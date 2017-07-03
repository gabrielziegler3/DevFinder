class AddFieldsToApplies < ActiveRecord::Migration[5.0]
  def change
    add_column :applies, :employer_id, :integer
    add_column :applies, :interested_id, :integer
  end
end
