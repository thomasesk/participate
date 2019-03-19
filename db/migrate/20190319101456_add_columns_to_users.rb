class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stripe_id, :string
    add_column :users, :plan_id, :string
  end
end
