package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:02 by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Emp generated by hbm2java
 */
public class Emp implements java.io.Serializable {

	private short empno;
	private Emp emp;
	private Dept dept;
	private String ename;
	private String job;
	private Date hiredate;
	private BigDecimal sal;
	private BigDecimal comm;
	private Set emps = new HashSet(0);

	public Emp() {
	}

	public Emp(short empno) {
		this.empno = empno;
	}

	public Emp(short empno, Emp emp, Dept dept, String ename, String job,
			Date hiredate, BigDecimal sal, BigDecimal comm, Set emps) {
		this.empno = empno;
		this.emp = emp;
		this.dept = dept;
		this.ename = ename;
		this.job = job;
		this.hiredate = hiredate;
		this.sal = sal;
		this.comm = comm;
		this.emps = emps;
	}

	public short getEmpno() {
		return this.empno;
	}

	public void setEmpno(short empno) {
		this.empno = empno;
	}

	public Emp getEmp() {
		return this.emp;
	}

	public void setEmp(Emp emp) {
		this.emp = emp;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getEname() {
		return this.ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Date getHiredate() {
		return this.hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public BigDecimal getSal() {
		return this.sal;
	}

	public void setSal(BigDecimal sal) {
		this.sal = sal;
	}

	public BigDecimal getComm() {
		return this.comm;
	}

	public void setComm(BigDecimal comm) {
		this.comm = comm;
	}

	public Set getEmps() {
		return this.emps;
	}

	public void setEmps(Set emps) {
		this.emps = emps;
	}

}
