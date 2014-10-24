class AddFieldToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :description_service, :text
    add_column :repairs, :description_client, :text
    add_column :repairs, :relased, :boolean
  end
end
