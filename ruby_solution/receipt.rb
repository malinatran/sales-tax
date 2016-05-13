require_relative './line_parser'

class Receipt

  attr_reader :items_list

  def initialize
    @items_list = []
  end

  def add_item(line)
    @items_list << LineParser.parse_line(line)
  end

  def calculate_taxes
    total_taxes = 0
    i = 0
    while i < @items_list.length
      total_taxes += @items_list[i].taxes
      i += 1
    end
    total_taxes.round(2)
  end

  def calculate_total
    total_cost = 0
    i = 0
    while i < @items_list.length
      total_cost += @items_list[i].price
      i += 1
    end
    total_cost.round(2)
  end

end