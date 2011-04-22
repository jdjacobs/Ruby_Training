class Invoice
  attr_accessor :line_items

  def initialize(line_items)
    @line_items = line_items
  end
end

class LineItem
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end
end

invoices = [
  [4, 7.5, 3],
  [7, 8, 9, 10],
  [1.5, 3.4, 5]
]

# Process the invoices array with map and return an array with 3 Invoice
# objects (containing line items) within it
new_invoices = invoices.map do |the_array|
  Invoice.new(
    the_array.map do |num|
      LineItem.new(num)
    end
  )
end

puts new_invoices

new_invoices.each do |inv|
  puts inv.line_items
end