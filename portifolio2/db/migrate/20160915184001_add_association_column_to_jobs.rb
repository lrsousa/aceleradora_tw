class AddAssociationColumnToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :profile_id, :integer
  end
end
