class Change8 < ActiveRecord::Migration[7.0]
  def change
    add_reference :m2s,:m3,foreign_key: true
  end
end
