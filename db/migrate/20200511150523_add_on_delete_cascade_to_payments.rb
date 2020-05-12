class AddOnDeleteCascadeToPayments < ActiveRecord::Migration[5.2]
  def change
          add_reference :payments, :user, index: true
          add_foreign_key :payments, :users, on_delete: :cascade
  end
end
