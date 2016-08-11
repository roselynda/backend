class AddImageToComponent < ActiveRecord::Migration
  def change
    add_column :components, :image, :string
  end
end
