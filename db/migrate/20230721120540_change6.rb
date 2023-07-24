class Change6 < ActiveRecord::Migration[7.0]
  def change
    add_column :products,:add,:string
  end
end
