class ChangeImageInComponents < ActiveRecord::Migration
  def change
    remove_column :components, :image
    
    def up
      add_attachment :components, :image
    end

    def down
      remove_attachment :components, :image
    end
    
  end
end
