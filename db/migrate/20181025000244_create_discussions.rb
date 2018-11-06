class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.text :note

      t.timestamps
    end
  end
end
