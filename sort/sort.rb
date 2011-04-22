class Invoice
  attr_accessor :line_items

  def initialize(line_items)
    @line_items = line_items
  end

  def total_amount
    # You need to implement this method
    self.line_items.inject(0) { |sum, item| sum + item.amount}
  end
  
  def to_s
    total_amount.to_s
  end
end

class LineItem
  def amount
    @amount
  end

  def amount=(amount)
    @amount = amount
  end

  def initialize(amount)
    @amount = amount
  end
end

invoices = [
  [4, 7.5, 3],
  [7, 8, 9, 10],
  [1.5, 3.4, 5]
]

# Process the invoices array with collect and return an array with 3 Invoice
# objects (containing line items) within it
new_invoices = invoices.map do |the_array|
  Invoice.new(
    the_array.map do |num|
      LineItem.new(num)
    end
  )
end

puts new_invoices

puts "----------------"

# Now sort the array by the invoices total line item amount and print
sorted_invoices = new_invoices.sort do |a, b|
  a.total_amount <=> b.total_amount
end

puts sorted_invoices
