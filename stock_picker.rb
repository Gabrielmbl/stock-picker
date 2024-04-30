def stock_picker(array)
  best_profit = 0
  buy_day = 0
  sell_day = 0

  array.each_with_index do |buy_price, buy_index|
    (buy_index + 1...array.length).each do |sell_index|
      sell_price = array[sell_index]
      profit = sell_price - buy_price

      next unless profit > best_profit

      best_profit = profit
      buy_day = buy_index
      sell_day = sell_index
    end
  end

  [buy_day, sell_day]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
