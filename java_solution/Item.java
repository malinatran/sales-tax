import java.util.*;

public class Item {

  private String name; 
  private int quantity; 
  private double price; 
  private boolean isImported;
  private double taxes; 

  private static final double SALES_TAX_RATE = 0.10;
  private static final double IMPORT_TAX_RATE = 0.05;
  private static final String[] EXEMPT_ITEMS = {"book", "chocolate", "pills"}; 

  public Item(String name, int quantity, double price, boolean isImported) {
    this.name = name;
    this.quantity = quantity;
    this.isImported = isImported;
    this.taxes = calculateTaxes(price);
    this.price = (price * quantity) + this.taxes;
  }

  public double getTaxes() {
    return taxes;
  }
  
  public double getPrice() {
    return price;
  }

  public String getName() {
    return name;
  }

  public boolean isImported() {
    return isImported;
  }

  public int getQuantity() {
    return quantity;
  }

  private static double roundUp(double num) {
    return ((((int)Math.floor(num * 100) + 4) / 5) * 5.0) / 100;
  }

  private double calculateTaxes(double price) {
    double totalTaxes = 0;
    if (!isItemExempt(name)) {
      totalTaxes += price * SALES_TAX_RATE;
    }
    if (isImported) {
      totalTaxes += price * IMPORT_TAX_RATE;
    }
    return roundUp(totalTaxes) * quantity;
  }

  private static boolean isItemExempt(String line) {
    for(int i = 0; i < EXEMPT_ITEMS.length; i++) {
      if (line.indexOf(EXEMPT_ITEMS[i]) >= 0) {
        return true;
      } 
    }
    return false;
  }
}