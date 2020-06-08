json.extract! product, :id, :name, :buy_price, :sell_price, :stock_amount
json.url product_url(product, format: :json)
