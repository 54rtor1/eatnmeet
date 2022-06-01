class AddCoordinatesToDinings < ActiveRecord::Migration[6.1]
  def change
    add_column :dinings, :latitude, :float
    add_column :dinings, :longitude, :float
  end
end
