class AddDateRequestedToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :date_requested, :datetime
  end
end
