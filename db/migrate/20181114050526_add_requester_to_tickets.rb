class AddRequesterToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :requester, :string
  end
end
