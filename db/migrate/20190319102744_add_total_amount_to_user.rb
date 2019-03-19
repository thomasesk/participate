class AddTotalAmountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :total_amount, :integer, :default => 0
  end
end
