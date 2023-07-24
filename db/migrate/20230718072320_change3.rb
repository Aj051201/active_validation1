class Change3 < ActiveRecord::Migration[7.0]
  def up
    add_column :people,:email_check,:string
    remove_column :people,:email_confirmation
  end
end
