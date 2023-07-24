class Change < ActiveRecord::Migration[7.0]
  def change
    add_column :authors,:book_name ,:string 
  end
end
