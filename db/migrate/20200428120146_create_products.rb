class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :buy_price
      t.decimal :sell_price
      t.integer :stock_amount

      t.timestamps
    end
  end
end
