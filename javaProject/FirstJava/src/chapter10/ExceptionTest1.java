package chapter10;

import java.util.Scanner;

public class ExceptionTest1 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("프로그램을 시작합니다. ");
		System.out.println("정수 하나를 입력하세요. ");
		int num1 = sc.nextInt();

		System.out.println("두번째 정수를 입력하세요. ");
		int num2 = sc.nextInt();

		// if를 이용해서 예외처리.
		if (num2 == 0) {
			System.out.println("0으로 나누기는 불가능합니다. ");
			System.out.println("프로그램을 종료합니다. ");
			return; // main메소드 종료 -> 프로그램 종료.
		}

		System.out.println(num1 / num2);
		System.out.println("프로그램을 종료합니다. ");
	}

}
