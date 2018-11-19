class UsersCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :users_categories, :id => false do |t|
      t.integer :category_id
      t.integer :user_id
    end
  end
end
