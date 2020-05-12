class ChangeProfitToRevenueAtTaxes < ActiveRecord::Migration[5.2]
  def change

    remove_column :payments, :profit
    add_column :payments, :revenue, :integer, :null => false

  end
end
