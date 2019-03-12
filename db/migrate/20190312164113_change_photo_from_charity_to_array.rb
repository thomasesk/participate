class ChangePhotoFromCharityToArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :charities, :photo, :string
    add_column :charities, :photo, :string, array: true, default: []
  end
end
