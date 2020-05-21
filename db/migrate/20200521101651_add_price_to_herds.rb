class AddPriceToHerds < ActiveRecord::Migration[6.0]
  def change
    add_column :herds, :price, :integer
  end
end
