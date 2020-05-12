class ChangeIsManagerForUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :is_manager, :boolean, default: false


  end
end
