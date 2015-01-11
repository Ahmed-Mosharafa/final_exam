class Sale < ActiveRecord::Base
  attr_accessible :date, :good, :price, :city
  #You can query data (create a method filter ‘filter_by_city’ that filters by city. and it expects an array of 0 or more cities as parameter.
  def self.filter_by_city(array)
    @arr = []
    if array.length > 0 then #check array.length > 0 to handle errors 
      array.each do |city| #
      city = city.split('_') 
      @arr << Sale.find_all_by_city(city[1].to_s) #adds filtered data to @arr to be passed to the controller which passes it to model
      end
    end
    @arr #return arr 
  end
end
