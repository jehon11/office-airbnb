class AddBooleansToOfficeSpace < ActiveRecord::Migration[5.2]
  def change
    add_column :office_spaces, :wifi, :boolean, default: false
    add_column :office_spaces, :reception, :boolean, default: false
    add_column :office_spaces, :aircon, :boolean, default: false
    add_column :office_spaces, :cleaning, :boolean, default: false
    add_column :office_spaces, :meeting_rooms, :boolean, default: false
    add_column :office_spaces, :coffee_machine, :boolean, default: false
    add_column :office_spaces, :cafeteria, :boolean, default: false
    add_column :office_spaces, :parking, :boolean, default: false
  end
end
