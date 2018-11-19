class AddIdsToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_id, :integer
    add_column :categories, :category_title, :string
  end
end
