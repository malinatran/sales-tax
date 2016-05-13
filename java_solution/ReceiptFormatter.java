import java.util.*;

public class ReceiptFormatter {

  public static String formatReceipt(Receipt receipt) {
    String output = "";
    List<Item> items = receipt.getItems();

    for (Item item : items) {
      output += String.format(
        "%d%s %s: %.2f\n",
        item.getQuantity(),
        item.isImported() ? " imported" : "",
        item.getName(),
        item.getPrice()
      );
    }
    output += String.format(
      "Sales Taxes: %.2f\nTotal: %.2f",
      receipt.getTaxes(),
      receipt.getTotal()
    );
    return output;
  }
}