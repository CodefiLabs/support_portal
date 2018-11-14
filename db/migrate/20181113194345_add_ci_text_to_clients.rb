class AddCiTextToClients < ActiveRecord::Migration[5.2]
  def change
    enable_extension :citext
    change_column :clients, :name, :citext
    add_index :clients, :name, unique: true
  end
end
