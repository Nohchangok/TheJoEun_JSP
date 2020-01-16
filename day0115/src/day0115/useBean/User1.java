package day0115.useBean;

import java.time.LocalDate;

public class User1 {
	private String name;
	private int score;
	private LocalDate birth;
	
	public User1(){}
	
	public User1(String name, int score, LocalDate birth) {
		super();
		this.name = name;
		this.score = score;
		this.birth = birth;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public LocalDate getBirth() {
		return birth;
	}

	public void setBirth(LocalDate birth) {
		this.birth = birth;
	}
	
	
}
