class AddColumnToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :job_roles, :string
  end
end
