class AddRelationshipInvoiceToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :user
  end
end
