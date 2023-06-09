package arrangement;

public class Teacher1 {

	public static void main(String[] args) {

		// 국어, 영어, 수학 점수 10개씩을 저장하는 배열을 정의하고 점수를 모두 출력하고,
		// 평균 점수를 출력하는 프로그램을 작성해봅시다.

		String[] sName = { "A", "B" };
		int[] korScore = { 100, 80, 60, 40, 80, 50, 60, 90, 40, 100 };
		int[] engScore = { 70, 40, 80, 90, 90, 60, 80, 60, 90, 70 };
		int[] mathScore = { 600, 80, 69, 100, 30, 40, 90, 90, 50, 80 };

		System.out.println("국어 \t 영어 \t 수학 \t 총점 \t 평균");
//		for(int i=0; i<10; i++) {
//			int sum = korScore[i] + engScore[i] + mathScore[i];
//			float avg = sum/3f;
//			System.out.println(korScore[i] + "\t" + engScore[i] + "\t" + mathScore[i] + "\t" + sum + "\t" + avg);
//		}

		int[][] scores = { { 100, 10, 50 }, { 90, 20, 50 }, { 80, 30, 50 }, { 70, 40, 50 }, { 60, 50, 50 },
				{ 50, 60, 50 }, { 40, 70, 50 }, { 30, 80, 50 }, { 20, 90, 50 }, { 10, 100, 50 } };

		for (int i = 0; i < scores.length; i++) {
			int sum = 0;
			for (int j = 0; j < scores[i].length; j++) {
				System.out.print(scores[i][j] + "\t");
				sum += scores[i][j];
			}
			System.out.print(sum + "\t");
			System.out.print(sum / (float) scores[i].length);
			System.out.println();
		}

	}

}
