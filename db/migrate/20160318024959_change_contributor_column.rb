class ChangeContributorColumn < ActiveRecord::Migration
  def change
    rename_column :contributors, :owner, :is_owner
  end
end
