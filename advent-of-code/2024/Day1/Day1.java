/* Advent of code 2024
Day 1: Historian Hysteria
*/

// Import statements
import java.io.File;
import java.util.Scanner;
import java.util.Arrays;

public class Day1 {
	public static void main(String[] args) throws Exception {
		part1("input.txt");
		part2("input.txt");
	}

	public static void part1(String filename) throws Exception {
		int[][] combinedArrays = fillArrays(filename);

		int[] leftArr = combinedArrays[0];
		int[] rightArr = combinedArrays[1];

		Arrays.sort(leftArr);
		Arrays.sort(rightArr);

		int totalDistance = 0;

		for(int i=0; i<leftArr.length; i++){
			int diff = abs(leftArr[i] - rightArr[i]);
			totalDistance += diff;
		}

		System.out.println("Total distance: " + totalDistance);	
	}

	public static void part2(String filename) throws Exception {
		int[][] combinedArrays = fillArrays(filename);
		int[] leftArr = combinedArrays[0];
		int[] rightArr = combinedArrays[1];

		int totalSimilarityScore = 0;

		for(int i=0; i<leftArr.length; i++){
			int target = leftArr[i];
			int similarityScore = 0;
			for (int j=0; j<rightArr.length; j++){
				if (rightArr[j] == target){
					similarityScore += target;
				}
			}
			totalSimilarityScore += similarityScore;
		}

		System.out.println("Total similarity score: " + totalSimilarityScore);
	}

	public static int abs(int x){
		return (x < 0) ? -x : x;
	}

	public static int[][] fillArrays(String filename) throws Exception{
		File fileObj = new File(filename);
		Scanner scannerObj = new Scanner(fileObj);

		int lineCount = countLines(filename);

		int[] leftArr = new int[lineCount];
		int[] rightArr = new int[lineCount];

		int i = 0;
		while (scannerObj.hasNextLine() ){
			if(scannerObj.hasNextInt()){
				leftArr[i] = scannerObj.nextInt();
				rightArr[i] = scannerObj.nextInt();
			}else {
				scannerObj.nextLine();
			}

			i++;
		}

		int[][] combinedArrays = {leftArr, rightArr};

		return combinedArrays;
	}

	public static int countLines(String filename) throws Exception {
		File fileObj = new File(filename);

		Scanner scannerObj = new Scanner(fileObj);

		int lineCount = 0;

		while (scannerObj.hasNextLine() ){
			String line = scannerObj.nextLine();
			lineCount++;
		}

		return lineCount;
	}


}