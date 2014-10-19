class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :last_name
      t.string :first_name
      t.integer :phone_number
      t.string :email

      t.timestamps
    end
  end
end
