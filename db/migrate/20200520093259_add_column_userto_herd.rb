class AddColumnUsertoHerd < ActiveRecord::Migration[6.0]
  def change
    add_reference :herds, :user, index: true
  end
end
