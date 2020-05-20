class AddHerdownerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Herdowner, :boolean, default: false
    #Ex:- :default =>''
  end
end
