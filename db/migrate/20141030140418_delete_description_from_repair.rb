class DeleteDescriptionFromRepair < ActiveRecord::Migration
  def change
    remove_column :repairs, :description
  end
end
