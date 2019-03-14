class AddDefaultValueToShareAndAmoutFromDonations < ActiveRecord::Migration[5.2]
  def change
    change_column :donations, :share, :integer, :default => 0
    change_column :donations, :amount, :integer, :default => 0
  end
end
