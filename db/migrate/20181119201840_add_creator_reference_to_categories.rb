class AddCreatorReferenceToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :creator, references: :users
  end
end