class Change11 < ActiveRecord::Migration[7.0]
  def change
    add_reference :casts,:author,foreign_key: true
  end
end
