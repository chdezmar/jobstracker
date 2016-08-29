class AddInfoToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :info, :string
  end
end
