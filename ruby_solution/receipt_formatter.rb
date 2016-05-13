class ReceiptFormatter

  def self.format_receipt(receipt)
    i = 0
    output = ''
    while i < receipt.items_list.length
      output += "#{receipt.items_list[i].quantity}#{receipt.items_list[i].is_imported ? ' imported' : ''} #{receipt.items_list[i].name}: #{'%.02f' % receipt.items_list[i].price}\n"
      i += 1
    end
    output + "Sales Taxes: #{'%.02f' % receipt.calculate_taxes}\nTotal: #{'%.02f' % receipt.calculate_total}"
  end

end