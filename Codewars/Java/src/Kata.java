import java.util.ArrayList;
import java.util.List;

public class Kata {
  public static List<Object> filterList(final List<Object> list) {
    List<Object> output = new ArrayList<>();
    for(Object o: list){
      if(o instanceof java.lang.Integer){
        output.add(o);
      }
    }
    // Return the List with the Strings filtered out
    return output;
  }

  public static String evenOrOdd(int number) {
    if (number%2 == 0){
      return "Even";
    }else{
      return "Odd";
    }

    // Alternative solution using ternary operator:
    // return (number % 2) == 0 ? "Even" : "Odd";
  }
}