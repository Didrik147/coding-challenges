public class HighestAndLowest {
  public static String highAndLow(String input) {
    String[] StringArr = input.split(" ");
    int[] intArr = new int[StringArr.length];
    for(int i=0; i<StringArr.length; i++){
      intArr[i] = Integer.parseInt(StringArr[i]);
    }

    return findMax(intArr) + " " + findMin(intArr);
  }

  public static int findMin(int[] arr){
    int min = arr[0];
    int index = 0;

    for(int i=0; i<arr.length; i++){
      if(arr[i] < min){
        min = arr[i];
        index = i;
      }
    }

    return min;
  }
  public static int findMax(int[] arr){
    int max = arr[0];
    int index = 0;

    for(int i=0; i<arr.length; i++){
      if(arr[i] > max){
        max = arr[i];
        index = i;
      }
    }

    return max;
  }

}