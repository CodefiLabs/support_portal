class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
