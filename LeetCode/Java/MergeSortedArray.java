// 88. Merge Sorted Array
import java.util.Arrays;

public class MergeSortedArray {
	public static void main(String[] args){
		int[] nums1 = {1,2,3,0,0,0};
		int m = 3;
		int[] nums2 = {2,5,6};
		int n = 3;
		
		//merge(nums1, m, nums2, n);
		//aman(nums1, m, nums2, n);
		merge2(nums1, m, nums2, n);
	}

	public static void merge(int[] nums1, int m, int[] nums2, int n) {
        for(int j=0; j<n; j++){
        	nums1[m+j] = nums2[j];
        }
        Arrays.sort(nums1);

        System.out.println(Arrays.toString(nums1));
    }

    // Solution by Aman (two pointer)
    public static void aman(int[] nums1, int m, int[] nums2, int n) {
        int i = m-1;
        int j = n-1;
        int k = m+n-1;

        while (j >= 0){
        	if (i >= 0 && nums1[i] > nums2[j]){
        		nums1[k--] = nums1[i--];
        	}else {
        		nums1[k--] = nums2[j--];
        	}
        }

        System.out.println(Arrays.toString(nums1));
    }

    // My own variation
    public static void merge2(int[] nums1, int m, int[] nums2, int n) {
        int i = m-1;
        int j = n-1;
        int k = m+n-1;

        while (j >= 0){
        	if (i >= 0 && nums1[i] > nums2[j]){
        		nums1[k] = nums1[i];
        		k--;
        		i--;
        	}else {
        		nums1[k] = nums2[j];
        		k--;
        		j--;
        	}
        }

        System.out.println(Arrays.toString(nums1));
    }
}