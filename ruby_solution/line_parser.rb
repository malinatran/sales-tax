require_relative './item'

class LineParser

  def self.parse_line(line)
    name = line[line.index(' ')..line.index(' at ')].sub("imported ", "").strip!
    quantity = line[0..line.index(' ')].to_i
    price = line[line.index('at ')+3..line.length].to_f
    is_imported = line.include? "imported" 
    Item.new(name, quantity, price, is_imported)
  end

end