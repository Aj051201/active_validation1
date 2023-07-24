class CreateM2 < ActiveRecord::Migration[7.0]
  def change
    create_table :m2s do |t|
      t.string :name

      t.timestamps
    end
  end
end
