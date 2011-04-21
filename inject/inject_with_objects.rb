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
  {
    :invoices => [
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)]),
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)]),
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)])
    ]
  },
  {
    :invoices => [
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)]),
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)]),
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)])
    ]
  },
  {
    :invoices => [
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)]),
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)]),
      Invoice.new([LineItem.new(1), LineItem.new(2), LineItem.new(3)])
    ]
  }
]

total = invoices.inject(0) do |sum, the_hash|
  # Sum of all invoice line items in invoices
end

puts total
