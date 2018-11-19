class UserCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_categories do |t|
      remove_reference :users 
      remove_reference :categories
      t.reference :user
      t.reference :category
    end
       
  end
end
