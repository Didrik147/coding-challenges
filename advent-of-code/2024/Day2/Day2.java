/* Advent of code 2024
Day 2: Red-Nosed Report
*/

// Import statements
import java.io.File;
import java.util.Scanner;
import java.util.Arrays;

public class Day2 {
	public static void main(String[] args) throws Exception {
		String filename = "input.txt";
		part1(filename);
	}

	public static void part1(String filename) throws Exception {
		System.out.println("--- Part 1 ---");
		File fileObj = new File(filename);
		Scanner scannerObj = new Scanner(fileObj);

		int safeCount = 0;

		while (scannerObj.hasNextLine()){
			String report = scannerObj.nextLine();
			String[] reportArr = report.split(" ");

			int[] arr = new int[reportArr.length];
			

			for(int i=0; i<arr.length; i++){
				arr[i] = Integer.parseInt(reportArr[i]);
			}

			if (checkSafe(arr)){
				safeCount++;
			}
		}
		System.out.println(safeCount + " safe reports.");
	}

	public static boolean checkSafe(int[] arr){
		boolean increasing = true;
		if(arr[1] < arr[0]){
			increasing = false;
		}
		for(int i=0; i<arr.length-1; i++){
			int diff = (increasing) ? arr[i+1]-arr[i] : arr[i]-arr[i+1];

			if (diff < 1 || diff > 3){
				return false;
			}
		}

		return true;
	}
}