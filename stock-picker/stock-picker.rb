prices = [17,3,9,15,6,1,10]

def pick_stocks(prices)
  stock_costs = ""
  highest_profit = 0
  buy_sell_days = ""
  
  prices.each_with_index do |price1, index1|
    prices.each_with_index do |price2, index2|

      profit = price2 - price1

      if profit > highest_profit && index1 < index2
        highest_profit = profit
        buy_sell_days = [index1, index2]
        stock_costs = [price1, price2]
      end
      
    end
  end 
  puts "Buy stocks on Day #{buy_sell_days[0]+1}: $#{stock_costs[0]}. 
Sell stocks on Day #{buy_sell_days[1]+1}: $#{stock_costs[1]}. 
Profit = $#{highest_profit}."
  
  buy_sell_days
end 

pick_stocks(prices)


#Always looks for the lowest day to buy and the highest day to sell


def stock_picker(prices)
  buy, index1 = prices.each_with_index.min
  sell, index2 = prices.each_with_index.max
  profit = sell - buy

    puts "\nBuy stocks on Day #{index1+1}: $#{buy}. 
Sell stocks on Day #{index2+1}: $#{sell}. 
Profit = $#{profit}."

end
stock_picker(prices)
