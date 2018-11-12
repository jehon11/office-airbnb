class CreateOfficeSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :office_spaces do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :photo
      t.string :nearest_station
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
