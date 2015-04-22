class CreateDelatations < ActiveRecord::Migration
  def change
    create_table :delatations do |t|
      t.integer :category
      t.string :address
      t.float :latitude
      t.float :longitude
      t.date :date
      t.integer :shift
      t.text :description

      t.timestamps
    end
  end
end
