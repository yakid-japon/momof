class CreateRailways < ActiveRecord::Migration[5.2]
  def change
    create_table :railways do |t|
      t.string :name
      t.string :station
      t.integer :minute
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
