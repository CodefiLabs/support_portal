class AddClientToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :client, foreign_key: true
  end
end
