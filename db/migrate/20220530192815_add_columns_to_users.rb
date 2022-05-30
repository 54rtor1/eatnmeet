class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :description, :text
    add_column :users, :phone_number, :string
    add_column :users, :country, :string
    add_column :users, :birthdate, :date
    add_column :users, :role, :string
    add_column :users, :city, :string
    add_column :users, :address, :string
  end
end
