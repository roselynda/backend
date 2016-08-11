class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.integer :user_id
      t.integer :design_id
      t.boolean :owner

      t.timestamps null: false
    end
  end
end
