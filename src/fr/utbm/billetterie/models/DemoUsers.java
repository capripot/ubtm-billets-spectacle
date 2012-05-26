package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:02 by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * DemoUsers generated by hbm2java
 */
public class DemoUsers implements java.io.Serializable {

	private BigDecimal userId;
	private String userName;
	private String password;
	private Date createdOn;
	private BigDecimal quota;
	private Character products;
	private Date expiresOn;
	private Character adminUser;
	private Set demoOrderses = new HashSet(0);

	public DemoUsers() {
	}

	public DemoUsers(BigDecimal userId) {
		this.userId = userId;
	}

	public DemoUsers(BigDecimal userId, String userName, String password,
			Date createdOn, BigDecimal quota, Character products,
			Date expiresOn, Character adminUser, Set demoOrderses) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.createdOn = createdOn;
		this.quota = quota;
		this.products = products;
		this.expiresOn = expiresOn;
		this.adminUser = adminUser;
		this.demoOrderses = demoOrderses;
	}

	public BigDecimal getUserId() {
		return this.userId;
	}

	public void setUserId(BigDecimal userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public BigDecimal getQuota() {
		return this.quota;
	}

	public void setQuota(BigDecimal quota) {
		this.quota = quota;
	}

	public Character getProducts() {
		return this.products;
	}

	public void setProducts(Character products) {
		this.products = products;
	}

	public Date getExpiresOn() {
		return this.expiresOn;
	}

	public void setExpiresOn(Date expiresOn) {
		this.expiresOn = expiresOn;
	}

	public Character getAdminUser() {
		return this.adminUser;
	}

	public void setAdminUser(Character adminUser) {
		this.adminUser = adminUser;
	}

	public Set getDemoOrderses() {
		return this.demoOrderses;
	}

	public void setDemoOrderses(Set demoOrderses) {
		this.demoOrderses = demoOrderses;
	}

}
