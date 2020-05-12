class AddTaxesSystemToPayments < ActiveRecord::Migration[5.2]
  def change

    add_column :payments, :taxes_system, :string

  end
end
