class CreateDmeets < ActiveRecord::Migration[7.0]
  def change
    create_table :dmeets do |t|
      t.text :dmeet

      t.timestamps
    end
  end
end
