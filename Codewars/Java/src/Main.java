import java.util.List;

public class Main {
  public static void main(String[] args) {
    String kata = "Highest and Lowest";
    kata = "List Filtering";

    if(kata.equals("Highest and Lowest")) {
      System.out.println(HighestAndLowest.highAndLow("1 2 3 4 5"));
      System.out.println(HighestAndLowest.highAndLow("1 2 -3 4 5"));
      System.out.println(HighestAndLowest.highAndLow("1 9 3 4 -5"));
    }else if(kata.equals("List Filtering")){
      System.out.println(ListFiltering.filterList(List.of(1, 2, "a", "b")));
      System.out.println(ListFiltering.filterList(List.of(1, 2, "a", "b", 0, 15)));
      System.out.println(ListFiltering.filterList(List.of(1, 2, "a", "b", "aasf", "1", "123", 231)));
    }else{
      System.out.println("Have not trained on this problem.");
    }
  }
}
