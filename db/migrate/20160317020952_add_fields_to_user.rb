class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :organization_name, :string
    add_column :users, :is_student, :boolean
    add_column :users, :name, :string
  end
end
