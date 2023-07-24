class CreateNahas < ActiveRecord::Migration[7.0]
  def change
    create_table :nahas do |t|
      t.string :book

      t.timestamps
    end
  end
end
