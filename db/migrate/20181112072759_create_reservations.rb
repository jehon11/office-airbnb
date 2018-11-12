class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :office_space, foreign_key: true
      t.date :check_in
      t.date :check_out
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
