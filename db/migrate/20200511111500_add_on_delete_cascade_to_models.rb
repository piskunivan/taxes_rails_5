class AddOnDeleteCascadeToModels < ActiveRecord::Migration[5.2]
  def change

     remove_foreign_key :room_messages, :rooms
     add_foreign_key :room_messages, :rooms, on_delete: :cascade

     remove_foreign_key :room_messages, :users
     add_foreign_key :room_messages, :users, on_delete: :cascade



   end
end
