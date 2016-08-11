class AddFieldsToComponents < ActiveRecord::Migration
  def change
    add_column :components, :properties, :text
  end
end
