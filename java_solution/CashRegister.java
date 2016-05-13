import java.util.*;

public class CashRegister {

  public static void main(String[] args) {
    Receipt receipt = new Receipt();
    Scanner reader = new Scanner(System.in);
    String line;
    
    while (reader.hasNextLine()) {
      line = reader.nextLine();
      receipt.addItem(line);
    }

    System.out.println(ReceiptFormatter.formatReceipt(receipt));
  }

}
