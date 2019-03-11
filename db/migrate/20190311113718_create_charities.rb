class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :category
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
