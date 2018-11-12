class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :officespace, foreign_key: true
      t.date :check_in
      t.date :check_out
      t.boolean :confirmed

      t.timestamps
    end
  end
end
