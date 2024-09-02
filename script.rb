require "pry-byebug"

def stock_picker(stocks)
  max_diff = stocks[1] - stocks[0]
  smallest_element = current_min_element = stocks[0]
  max_element = stocks[1]
    stocks.each_index do |i|
      next if i == 0 
      if stocks[i] - current_min_element > max_diff 
        max_diff = stocks[i] - current_min_element 
        max_element = stocks[i]
        current_min_element = smallest_element
      end
      smallest_element = stocks[i] if stocks[i] < current_min_element
    end   
  [stocks.index(current_min_element), stocks.index(max_element)]
end

p stock_picker([1700,3,6,9,15,86786788,90123123123,1,23123123123123,23212312312312,1])

