class AddCoordinatesToOfficeSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :office_spaces, :latitude, :float
    add_column :office_spaces, :longitude, :float
  end
end
