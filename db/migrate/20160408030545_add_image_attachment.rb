class AddImageAttachment < ActiveRecord::Migration
  def change
  	add_column :components, :image_updated_at, :datetime
  	add_column :components, :image_file_size, :integer
  	add_column :components, :image_content_type, :string
  	add_column :components, :image_file_name, :string
  end
end
