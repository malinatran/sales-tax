public class LineParser {

  public static Item parseLine(String line) {

    String name = line.substring(line.indexOf(" "), line.indexOf(" at ")).replace(" imported", "").trim();
    int quantity = Integer.parseInt(line.substring(0, line.indexOf(" ")));
    double price = Double.parseDouble(line.substring(line.indexOf("at ")+3, line.length()));
    boolean isImported = line.indexOf("imported") >= 0;
    return new Item(name, quantity, price, isImported);
  }

}