class AddUsernumberToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :usernumber, :integer
  end
end
