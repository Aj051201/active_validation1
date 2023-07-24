class Change4 < ActiveRecord::Migration[7.0]
  def change
    add_column :users,:joining_date,:date
  end
end
