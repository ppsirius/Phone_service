class ChangeFieldTypeToText < ActiveRecord::Migration
  def change
    change_table :repairs do |t|
      t.change :description, :text
    end
  end
end
