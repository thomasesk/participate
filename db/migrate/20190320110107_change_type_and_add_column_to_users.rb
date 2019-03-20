class ChangeTypeAndAddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :suscription, :suscription_id
    add_column :users, :suscription_item_id, :string
  end
end
