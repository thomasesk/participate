class AddSuscriptionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :suscription_id, :string
  end
end
