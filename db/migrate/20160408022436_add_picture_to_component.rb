class AddPictureToComponent < ActiveRecord::Migration
  def change
    add_column :components, :picture, :string
  end
end
