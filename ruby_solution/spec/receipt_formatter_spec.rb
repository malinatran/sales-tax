require 'spec_helper'
require_relative '../receipt'
require_relative '../receipt_formatter'

describe ReceiptFormatter do

  it 'should format a receipt' do
    receipt = Receipt.new
    receipt.add_item('1 imported bottle of perfume at 27.99')
    receipt.add_item('1 bottle of perfume at 18.99')
    receipt.add_item('1 packet of headache pills at 9.75')
    receipt.add_item('1 box of imported chocolates at 11.25')
    formatted_receipt = ReceiptFormatter.format_receipt(receipt)
    expected_output = [
      '1 imported bottle of perfume: 32.19', 
      '1 bottle of perfume: 20.89', 
      '1 packet of headache pills: 9.75', 
      '1 imported box of chocolates: 11.85',
      'Sales Taxes: 6.70',
      'Total: 74.68'
    ]
    expect(formatted_receipt).to eq(expected_output.join("\n"))
  end


end