class AddIsApprovedToProjectSubmissions < ActiveRecord::Migration[7.1]
  def change
    add_column :project_submissions, :is_approved, :boolean
  end
end
