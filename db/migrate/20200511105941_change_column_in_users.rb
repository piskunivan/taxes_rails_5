class ChangeColumnInUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :users, :admin, :boolean, default: false

    rename_column :users, :role, :is_manager
    
  end
end
