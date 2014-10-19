class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.integer :phone_model_id
      t.integer :client_id
      t.string :status
      t.integer :imei
      t.integer :serviceman_id
      t.string :description
      t.integer :max_price
      t.integer :costs
      t.integer :price
      t.date :deadline

      t.timestamps
    end
  end
end
