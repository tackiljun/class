package chapter05.phone;

public class Member {

	// 변수.
	String name;
	String email;
	int age;
	String PhoneNumber;
	SmartPhone phone;

	// Shift + Alt + s

	public Member(String name, String email, int age, String phoneNumber, SmartPhone phone) {
		this.name = name;
		this.email = email;
		this.age = age;
		PhoneNumber = phoneNumber;
		this.phone = phone;
	}

	public Member(String name, String email) {
		this.name = name;
		this.email = email;
		this.age = 20;
		this.PhoneNumber = "입력데이터가 없습니다.";
		this.phone = new SmartPhone();
	}

	void showData() {
		System.out.println("이름 : " + name);
		System.out.println("이메일 : " + email);
		System.out.println("나이 : " + age);
		System.out.println("전화번호 : " + PhoneNumber);
		this.phone.call();
	}

}
