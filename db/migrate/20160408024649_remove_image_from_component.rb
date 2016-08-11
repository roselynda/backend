class RemoveImageFromComponent < ActiveRecord::Migration
  def change
  	remove_column :components, :image
  	remove_column :components, :image_updated_at
  	remove_column :components, :image_file_size
  	remove_column :components, :image_content_type
  	remove_column :components, :image_file_name

  end
end
