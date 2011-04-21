class Invoice
  def line_items
    [1, 2, 3]
  end
end

array = [
  { 
    :invoices => [
      Invoice.new,
      Invoice.new,
      Invoice.new
    ]
  },
  { 
    :invoices => [
      Invoice.new,
      Invoice.new,
      Invoice.new
    ]
  },
  { 
    :invoices => [
      Invoice.new,
      Invoice.new,
      Invoice.new
    ]
  }
]

total = array.inject(0) do |sum, the_hash|
  # Sum the line_items on each invoice and return the overall total
  sum + the_hash[:invoices].inject(0) do |inner_sum, the_invoice|
    inner_sum + the_invoice.line_items.inject(0) { |third_sum, number| third_sum + number }
  end
end

puts total





# print the sum of the sum of payments
# sum + pmt[:payments].inject(0) { |result, element| result + element }
# payments = pmt[:invoices].inject(0) do |result, element|
#   result + element[:payments].inject(0) { |a, b| a + b }
# end
# puts payments
# sum + payments
