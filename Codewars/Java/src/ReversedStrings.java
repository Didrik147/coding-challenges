import static java.lang.System.*;

public class ReversedStrings {
	public static void main(String[] args){
		out.println(solution("world"));
	}

	public static String solution(String str){
		String output = "";

		int size = str.length();

		int i = size-1;

		while (i >= 0){
			output += str.charAt(i);
			i--;
		}

		return output;
	}
}