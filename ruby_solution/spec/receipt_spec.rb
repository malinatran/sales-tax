require 'spec_helper'
require_relative '../item'
require_relative '../receipt'

describe Receipt do

  it 'should add an item' do
    receipt = Receipt.new
    receipt.add_item('1 chocolate bar at 0.85')
    item = receipt.items_list[0]
    expected_item = Item.new('chocolate bar', 1, 0.85, false)
    expect(item.name).to eq(expected_item.name)
    expect(item.quantity).to be(expected_item.quantity)
    expect(item.price).to be(expected_item.price)
    expect(item.is_imported).to be(expected_item.is_imported)
  end

  it 'should calculate the receipt total' do
    receipt = Receipt.new
    receipt.add_item('1 imported bottle of perfume at 27.99')
    receipt.add_item('1 bottle of perfume at 18.99')
    receipt.add_item('1 packet of headache pills at 9.75')
    receipt.add_item('1 box of imported chocolates at 11.25')
    expect(receipt.calculate_total).to be(74.68)
  end

  it 'should calculate the receipt taxes' do
    receipt = Receipt.new
    receipt.add_item('1 imported bottle of perfume at 27.99')
    receipt.add_item('1 bottle of perfume at 18.99')
    receipt.add_item('1 packet of headache pills at 9.75')
    receipt.add_item('1 box of imported chocolates at 11.25')
    expect(receipt.calculate_taxes).to be(6.70)
  end

end