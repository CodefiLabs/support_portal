class AddCategoryToTicket < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :category, foreign_key: true
  end
end
