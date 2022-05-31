class AddAddressToDinings < ActiveRecord::Migration[6.1]
  def change
    add_column :dinings, :address, :string
  end
end
