class ChangeStatusDefaultValueInBookings < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bookings, :status, "empty"
  end
end
