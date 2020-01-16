package day0115_ex;

import java.time.LocalDateTime;

public class Employee {

	String name;
	int salary;
	LocalDateTime hireDate;
	
	public Employee() {}
	
	public Employee(String name, int salary, LocalDateTime hireDate) {
		super();
		this.name = name;
		this.salary = salary;
		this.hireDate = hireDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public LocalDateTime getHireDate() {
		return hireDate;
	}

	public void setHireDate(LocalDateTime hireDate) {
		this.hireDate = hireDate;
	}
	
	
	
	
}
