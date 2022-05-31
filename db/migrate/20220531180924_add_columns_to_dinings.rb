class AddColumnsToDinings < ActiveRecord::Migration[6.1]
  def change
    add_column :dinings, :name, :string
    add_column :dinings, :comment, :string
    add_column :dinings, :max_guests, :integer
  end
end
