package CafeTest;

public class Quiz03 {

	public static void main(String[] args) {
		
		
		//CondOp.java를 조건연산자(3항 연산자)를 사용하지 않고, if~else를 사용하는 형태로 변경해 보자.
		
		
		int num1=50, num2=100;
        int big, diff;
        
        if (num1>num2) {
        	big = num1;
        	diff = num1-num2;
        } else {
        	
        }
        	
        	
        	
        big = (num1>num2)? num1:num2;
        System.out.println(big);
        diff = (num1>num2)? num1-num2: num2-num1;
        System.out.println(diff);
		

	}

}
