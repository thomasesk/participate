class ChangeTypeAndAddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :suscription_item_id, :string
  end
end
