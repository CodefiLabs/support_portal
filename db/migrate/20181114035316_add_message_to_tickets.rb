class AddMessageToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :message, :text
  end
end
