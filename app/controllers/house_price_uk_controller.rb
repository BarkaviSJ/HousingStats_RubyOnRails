class HousePriceUkController < ApplicationController
  def index
       @price2014 = Housingtypeprice.first(1726)   #@prices2014=Price.first(number of 2014 price) @prices2019=Price.last(number of 2019 price) 
       @prices_array_2014 = []
       @detached_prices_2014 = 0
       @semidetached_prices_2014 = 0
       @terraced_prices_2014 = 0
       @flat_prices_2014 = 0
       @count_2014 = 0 
      
               @price2014.each do |prices|
                   unless prices.detached.nil? || prices.semidetached.nil? || prices.terraced.nil? || prices.flat.nil?
                       @detached_prices_2014 += prices.detached 
                       puts(" detached prices #{@detached_prices_2014}")
                       @semidetached_prices_2014 += prices.semidetached
                       puts(" semidetached prices   #{@semidetached_prices_2014}")
                       @terraced_prices_2014 += prices.terraced 
                       puts(" terraced prices   #{@terraced_prices_2014}")
                       @flat_prices_2014 += prices.flat 
                       puts(" flat prices   #{@flat_prices_2014}")
                       @count_2014 +=1
                       puts (@count_2014)
                   end 
               end 
   @detached_prices_2014 = @detached_prices_2014/@count_2014 
   @semidetached_prices_2014 = @semidetached_prices_2014/@count_2014
   @terraced_prices_2014 = @terraced_prices_2014/@count_2014
   @flat_prices_2014 = @flat_prices_2014/@count_2014
   @prices_array_2014 = [@detached_prices_2014, @semidetached_prices_2014, @terraced_prices_2014, @flat_prices_2014]  

#--------------------------------price for 2019------------------------
        @price2019 = Housingtypeprice.last(1723)
        @prices_array_2019 = []
        @detached_prices_2019 = 0
        @semidetached_prices_2019 = 0
        @terraced_prices_2019 = 0
        @flat_prices_2019 = 0
        @count_2019 = 0 
      
               @price2019.each do |prices|
                   unless prices.detached.nil? || prices.semidetached.nil? || prices.terraced.nil? || prices.flat.nil?
                       @detached_prices_2019 += prices.detached 
                       puts(" detached prices #{@detached_prices_2019}")
                       @semidetached_prices_2019 += prices.semidetached
                       puts(" semidetached prices   #{@semidetached_prices_2019}")
                       @terraced_prices_2019 += prices.terraced 
                       puts(" terraced prices   #{@terraced_prices_2019}")
                       @flat_prices_2019 += prices.flat 
                       puts(" flat prices   #{@flat_prices_2019}")
                       @count_2019 +=1
                       puts (@count_2019)
                   end 
               end
   @detached_prices_2019 = @detached_prices_2019/@count_2019 
   @semidetached_prices_2019 = @semidetached_prices_2019/@count_2019
   @terraced_prices_2019 = @terraced_prices_2019/@count_2019
   @flat_prices_2019 = @flat_prices_2019/@count_2019
   @prices_array_2019 = [@detached_prices_2019, @semidetached_prices_2019, @terraced_prices_2019, @flat_prices_2019]  
   
   #Using Active Record queries to display the comparison data in the line chart of home page
      
   @monthly_cash_price = { 
    2014 => Financingtype.where(year: 2014).group_by(&:month).map { |month, values| values.map(&:cash_price) }.map(&:sum), 
    2019 => Financingtype.where(year: 2019).group_by(&:month).map { |month, values| values.map(&:cash_price) }.map(&:sum)
  }

   @monthly_mortgage_price = { 
    2014 => Financingtype.where(year: 2014).group_by(&:month).map { |month, values| values.map(&:mortgage_price) }.map(&:sum), 
    2019 => Financingtype.where(year: 2019).group_by(&:month).map { |month, values| values.map(&:mortgage_price) }.map(&:sum)
  }
      
  end
end
