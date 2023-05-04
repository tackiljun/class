package todo.domain;

public class Todo {
	
	
	private int no;            // 번호.
	private String todo;       // 할일.
	private String duedate;    // 날짜.
	private String complete;   // 완성.
	
	
	// 기본 생성자.(인자X).
	public Todo() {
	}
	
	
	// 생성자.(인자를 갖고있다).
	public Todo(int no, String todo, String duedate, String complete) {
		super();
		this.no = no;
		this.todo = todo;
		this.duedate = duedate;
		this.complete = complete;
	}

	
	// getter,setter.
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTodo() {
		return todo;
	}

	public void setTodo(String todo) {
		this.todo = todo;
	}

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	public String getComplete() {
		return complete;
	}

	public void setComplete(String complete) {
		this.complete = complete;
	}


	// toString
	@Override
	public String toString() {
		return "Todo [no=" + no + ", todo=" + todo + ", duedate=" + duedate + ", complete=" + complete + "]";
	}
	
	

}
