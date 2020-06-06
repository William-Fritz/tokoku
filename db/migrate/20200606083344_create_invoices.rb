class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.decimal :total_amount

      t.timestamps
    end
  end
end
