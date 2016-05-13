require 'spec_helper'
require_relative '../line_parser'

describe LineParser do

  it 'should parse an imported commodity' do
    item = LineParser.parse_line('1 imported bottle of perfume at 27.99')
    expected_item = Item.new('bottle of perfume', 1, 27.99, true)
    expect(item.name).to eq(expected_item.name)
    expect(item.quantity).to be(expected_item.quantity)
    expect(item.price).to be(expected_item.price)
    expect(item.is_imported).to be(expected_item.is_imported)
  end

  it 'should parse a domestic commodity' do
    item = LineParser.parse_line('1 bottle of perfume at 18.99')
    expected_item = Item.new('bottle of perfume', 1, 18.99, false)
    expect(item.name).to eq(expected_item.name)
    expect(item.quantity).to be(expected_item.quantity)
    expect(item.price).to be(expected_item.price)
    expect(item.is_imported).to be(expected_item.is_imported)
  end

  it 'should parse domestic medicine' do
    item = LineParser.parse_line('1 packet of headache pills at 9.75')
    expected_item = Item.new('packet of headache pills', 1, 9.75, false)
    expect(item.name).to eq(expected_item.name)
    expect(item.quantity).to be(expected_item.quantity)
    expect(item.price).to be(expected_item.price)
    expect(item.is_imported).to be(expected_item.is_imported)
  end

  it 'should parse imported food' do
    item = LineParser.parse_line('1 box of imported chocolates at 11.25')
    expected_item = Item.new('box of chocolates', 1, 11.25, true)
    expect(item.name).to eq(expected_item.name)
    expect(item.quantity).to be(expected_item.quantity)
    expect(item.price).to be(expected_item.price)
    expect(item.is_imported).to be(expected_item.is_imported)
  end

  it 'should handle quantities greater than 9' do
    item = LineParser.parse_line('11 box of imported chocolates at 11.25')
    expect(item.quantity).to be(11)
  end

end