public class ValidPalindrome{
	public static void main(String[] args) {
		String s = "A man, a plan, a canal: Panama";
		s = "ab_a";
		if(isPalindrome(s)){
			System.out.println(s + " is a palindrome.");
		}else {
			System.out.println(s + " is not a palindrome.");
		}
	}

	public static boolean isPalindrome(String s) {
		// Replace everything except alphanumeric characters using regex
		s = s.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
		System.out.println(s);
		int len = s.length();
		for(int i=0; i<len/2; i++){
			if (s.charAt(i) != s.charAt(len-i-1)){
				return false;
			}
		}

		return true;
    }
}