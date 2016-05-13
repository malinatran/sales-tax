class Item

  attr_reader :name, :quantity, :is_imported, :taxes, :price 

  def initialize(name, quantity, price, is_imported)
    @name = name
    @quantity = quantity
    @is_imported = is_imported
    @taxes = calculate_taxes(price)
    @price = ((quantity * price) + @taxes).round(2)
  end

  private

  SALES_TAX_RATE = 0.10
  IMPORT_TAX_RATE = 0.05

  def round_up(num)
    ((((num * 100).to_i + 4) / 5) * 5.0) / 100
  end

  def calculate_taxes(price)
    total_taxes = 0
    exempt_items = ['book', 'chocolate', 'pills']
    if !exempt_items.any? { |item| @name.include?(item) }
      total_taxes += price * SALES_TAX_RATE
    end
    if @is_imported
      total_taxes += price * IMPORT_TAX_RATE
    end
    round_up(total_taxes).round(2) * quantity
  end

end
