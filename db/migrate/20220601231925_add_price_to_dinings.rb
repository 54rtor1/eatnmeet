class AddPriceToDinings < ActiveRecord::Migration[6.1]
  def change
    add_column :dinings, :price, :float
  end
end
