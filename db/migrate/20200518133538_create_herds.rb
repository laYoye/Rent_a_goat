class CreateHerds < ActiveRecord::Migration[6.0]
  def change
    create_table :herds do |t|
      t.string :name
      t.string :address
      t.integer :goat_number
      t.string :photo
      t.text :about

      t.timestamps
    end
  end
end
