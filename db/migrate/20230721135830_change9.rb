class Change9 < ActiveRecord::Migration[7.0]
  def change
    add_reference :model1s,:model2 ,foreign_key: true
  end
end
