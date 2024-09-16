public class BinarySearch{
	public static void main(String[] args) {
		int[] nums = {-1,0,3,5,9,12};
		int target = 9;

		System.out.println(search(nums, target));
		System.out.println(search(nums, 2));
	}

	private static int search(int[] nums, int target){
		int low = 0;
		int high = nums.length - 1;


		while (low <= high){
			int middleIndex  = (low+high)/2;
			int middleNumber = nums[middleIndex];

			if (target == middleNumber){
				return middleIndex;
			}

			if (target < middleNumber){
				high = middleIndex - 1;
			}else if(target > middleNumber){
				low = middleIndex + 1;
			}
		}

		return -1;
	}
}