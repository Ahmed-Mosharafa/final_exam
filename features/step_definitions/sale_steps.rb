Given /the following movies exist/ do |sales_table|
  sales_table.hashes.each do |sale|
    #debugger
    Sale.create!(sale)
  end
end

