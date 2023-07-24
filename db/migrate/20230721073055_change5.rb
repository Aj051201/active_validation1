class Change5 < ActiveRecord::Migration[7.0]
  def change
    change_column :users,:joining_date,:datetime
  end
end