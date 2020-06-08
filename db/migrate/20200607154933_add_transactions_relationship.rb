class AddTransactionsRelationship < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :invoice
    add_reference :transactions, :product
  end
end
