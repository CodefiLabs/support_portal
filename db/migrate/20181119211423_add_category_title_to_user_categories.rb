class AddCategoryTitleToUserCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :user_categories, :category_title, :string
  end
end
