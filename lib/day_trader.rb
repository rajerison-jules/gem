=begin
---------------Explication du .each --------------------
  au k = 1
    price[1] - price[1] > price[0] - price[0] => FALSE
  au k = 2
    price[2] - price[1] > price[0] - price[0] => TRUE => buy = 1, sell = 2 (confition dans le 2e if)
  au k = 3
    price[3] - price[1] > price[2] - price[1] => TRUE => buy = 1, sell = 3
  au k = 4
    price[4] - price[1] > price[3] - price[1] => TRUE => buy = 1, sell = 4 (le dernier index retenue)
  au k = 5 jusqu'a k = 8 => FALSE
  le dernier index retenue [buy, sell] est [1, 4] CQFD
=end

def day_trader(price)
  i_min = 0
  buy = 0
  sell = 0
    (1...price.length).each do |k|
      if price[k] < price[i_min]
        i_min = k
      end
      if price[k] - price[i_min] >  price[sell] - price[buy]
        buy = i_min
        sell = k
      end
    end
    return [buy, sell]
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
