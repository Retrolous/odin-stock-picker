def get_indices_of_all(array, value)
  array.each_index.select{|i| array[i] == value}
end

def stock_picker(stocks)
  sorted_stocks = stocks.sort
  modified_stocks = stocks
  while get_indices_of_all(modified_stocks, sorted_stocks[0])[0] > get_indices_of_all(modified_stocks, sorted_stocks[-1])[-1]
    p sorted_stocks
    if get_indices_of_all(stocks, sorted_stocks[0])[0] == stocks.length - 1 
      p get_indices_of_all(stocks, sorted_stocks[0])
      sorted_stocks.shift
      modified_stocks.shift
      next
    elsif get_indices_of_all(stocks, sorted_stocks[-1])[-1] == 0
      p get_indices_of_all(stocks, sorted_stocks[-1])
      sorted_stocks.pop
      modified_stocks.pop
      next
    end
    
    if (sorted_stocks[-1] - sorted_stocks[1]) > (sorted_stocks[-2] - sorted_stocks[0]) then sorted_stocks.shift else sorted_stocks.pop end
      p sorted_stocks
  end

  [stocks.index(sorted_stocks[0]), stocks.index(sorted_stocks[-1])]
end

p stock_picker([17,3,6,9,15,8,17,6,1,10])

