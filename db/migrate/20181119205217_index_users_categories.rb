class IndexUsersCategories < ActiveRecord::Migration[5.2]
  def change
    add_index :users_categories, :user_id 
    add_index :users_categories, :category_id
    add_column :users_categories, :category_title, :string
    add_index :users_categories, :category_title
  end
end
