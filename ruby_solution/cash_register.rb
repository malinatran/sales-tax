require_relative './receipt'
require_relative './receipt_formatter'

receipt = Receipt.new

while line = gets
  receipt.add_item(line)
end

puts '==============='
puts ReceiptFormatter.format_receipt(receipt)
puts '==============='