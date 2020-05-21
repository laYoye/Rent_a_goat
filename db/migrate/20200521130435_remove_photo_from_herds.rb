class RemovePhotoFromHerds < ActiveRecord::Migration[6.0]
  def change
    remove_column :herds, :photo
  end
end
