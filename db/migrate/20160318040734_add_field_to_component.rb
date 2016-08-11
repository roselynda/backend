class AddFieldToComponent < ActiveRecord::Migration
  def change
    add_column :components, :group, :integer
  end
end
