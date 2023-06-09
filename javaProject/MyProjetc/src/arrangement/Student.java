package arrangement;

public class Student {

		
	// 2. Student 클래스를 정의해봅시다. 
		
	// ① 학생이름, 국어점수, 영어점수, 수학점수를 저장하는 변수를 정의 합니다.
	
	private String studentName;
	private int korScore;
	private int engScore;
	private int matScore;
	
	
	public Student(String studentName, int korScore, int engScore, int matScore) {
		super();
		this.studentName = studentName;
		this.korScore = korScore;
		this.engScore = engScore;
		this.matScore = matScore; 
		
	}

	// ② 변수는 캡슐화를 합니다. getter/setter 메소드를 정의합니다.
	
	public String getStudentName() {
		return studentName;
	}


	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}


	public int getKorScore() {
		return korScore;
	}


	public void setKorScore(int korScore) {
		this.korScore = korScore;
	}


	public int getEngScore() {
		return engScore;
	}


	public void setEngScore(int engScore) {
		this.engScore = engScore;
	}


	public int getMetScore() {
		return matScore;
	}


	public void setMetScore(int metScore) {
		this.matScore = metScore;
	}
	
	



	// ③ 총점과 평균을 구해 결과를 반환하는 메소드를 정의합니다.
	// 총점.
	private int sum() {
		return korScore + engScore + matScore;
	}
	// 평균.
	private float avg() {
		return sum()/3f;
	}
	
	public String result() {
		return studentName + "\t" + korScore + "\t" + engScore + "\t" + matScore + "\t" + sum() + "\t" + avg();
		
	}


	@Override
	public String toString() {
		return result(); 
	}
	
	
	
	

	
	
		
		
	
}
