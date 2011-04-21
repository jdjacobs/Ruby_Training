class Invoice
  attr_accessor :line_items

  def initialize(line_items)
    @line_items = line_item
  end
  
  def total_amount
    # You need to implement this method
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

# Process the invoices array with collect and return an array with 3 Invoice
# objects (containing line items) within it


# Now sort the array by the invoices total line item amount and print