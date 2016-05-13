import java.util.*;

public class Receipt {

  private List<Item> items;

  public Receipt() {
    items = new ArrayList<Item>();
  }

  public void addItem(String line) {
    items.add(LineParser.parseLine(line));
  }

  public List<Item> getItems() {
    return new ArrayList<Item>(items);
  }

  public double getTaxes() {
    double totalTaxes = 0;
    for (int i = 0; i < items.size(); i++) {
      totalTaxes += items.get(i).getTaxes();
    }
    return totalTaxes;
  }

  public double getTotal() {
    double totalPrice = 0;
    for (int i = 0; i < items.size(); i++) {
      totalPrice += items.get(i).getPrice();
    }
    return totalPrice;
  }

}