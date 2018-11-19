class UserCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categories do |t|
      t.integer :category_id 
      t.integer :creator_id, references: :users
    end
       
  end
end
