// 1768. Merge Strings Alternately

/* You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Return the merged string. */

public class Problem1768{
	public static void main(String[] args) {
		String word1 = "abcd";
		String word2 = "pq";
		System.out.println(mergeAlternately2(word1, word2));
	}

	public static String mergeAlternately(String word1, String word2) {
		// Empty output string
        String merged = "";
        int j = 0;

        /* The idea is to start filling the output string with the first letter from the first word. 
        Then, I fill with a letter from the second word, if we are not already at the end.

		If we have used all the letters in the first word, but still has lettes left in the second, we use the rest of the letters in the second word.
        */
        for(int i=0; i<word1.length(); i++){
		    	merged += word1.charAt(i);

		    	if (j < word2.length()){
		    		merged += word2.charAt(j);
	        		j++;
		    	}
	        }

	        while(j < word2.length()){
	        	merged += word2.charAt(j);
	        	j++;
	        }

        return merged;
    }

    // More elegant solution (inspired by Vikas-Pathak-123)
    public static String mergeAlternately2(String word1, String word2){
    	String merged = "";
    	int i = 0;

    	while(i < word1.length() || i < word2.length()){
    		if (i < word1.length()){
    			merged += word1.charAt(i);
    		}
    		if (i < word2.length()){
    			merged += word2.charAt(i);
    		}
    		i++;
    	}

    	return merged;
    }
}