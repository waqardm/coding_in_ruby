# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(array)
    profits = {}
    array.each_with_index do |price1, index1|
        array.each_with_index do |price2, index2|
            if index2 > index1
                profits[[index1, index2]] = price2 - price1
            end
        end
    end
    profits = profits.sort_by {|k,v| v}
    max_profit = profits[-1]
    puts "Buy on day #{max_profit[0][0]} and sell on day #{max_profit[0][1]} for the maximum profit of #{max_profit[1]}$"
end

stock_picker([15,8,6,1,10,17,3,6,9])