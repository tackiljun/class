package chapter07.Review;

public class Phone {
	// 상위클래스의 정의.
	// 상위클래세는 넓은 의미를 가지고, 공통적인 변수나 메소드를 가지는 클래스.

	String phoneNumber;

	// 생성자.
	public Phone(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Phone() {
	}

	void call() {
		System.out.println(phoneNumber + "에서 전화를 겁니다. ");
	}

}
