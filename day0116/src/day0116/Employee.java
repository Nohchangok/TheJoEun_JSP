package day0116;

import java.time.LocalDateTime;

public class Employee {
	
	private int empId;
	private String name;
	private String gender;
	private String position;
	private int salary;
	private int department_id;
	private LocalDateTime hire_date;
	private LocalDateTime retire_date;
	
	public Employee() {}
	
	public Employee(int empId, String name, String gender, String position, int salary, int department_id,
			LocalDateTime hire_date, LocalDateTime retire_date) {
		super();
		this.empId = empId;
		this.name = name;
		this.gender = gender;
		this.position = position;
		this.salary = salary;
		this.department_id = department_id;
		this.hire_date = hire_date;
		this.retire_date = retire_date;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}

	public LocalDateTime getHire_date() {
		return hire_date;
	}

	public void setHire_date(LocalDateTime hire_date) {
		this.hire_date = hire_date;
	}

	public LocalDateTime getRetire_date() {
		return retire_date;
	}

	public void setRetire_date(LocalDateTime retire_date) {
		this.retire_date = retire_date;
	}

}
