class ChangeTypeOfRepair < ActiveRecord::Migration
  def change
    change_table :repairs do |t|
      t.change :deadline, :datetime
    end
  end
end
