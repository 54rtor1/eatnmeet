class ChangeDefaultValueTimeInDinings < ActiveRecord::Migration[6.1]
  def change
    change_column_default :dinings, :time, "19:00"

  end
end
