import static java.lang.System.*;

public class StringEndsWith {
	public static void main(String[] args){
		out.println(solution("abc", "bc"));
		out.println(solution("abc", "d"));

	}

	public static boolean solution(String str, String ending){
    	int l = ending.length();
    	if (l > str.length()){
    		return false;
    	}
    	String sub = str.substring(str.length()-l);

    	//out.println(sub + " " + ending);

    	if (sub.equals(ending)){
    		return true;
    	}else {
    		return false;
    	}
  	}
}