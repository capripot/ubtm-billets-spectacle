package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:02 by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * DemoOrders generated by hbm2java
 */
public class DemoOrders implements java.io.Serializable {

	private BigDecimal orderId;
	private DemoUsers demoUsers;
	private DemoCustomers demoCustomers;
	private BigDecimal orderTotal;
	private Date orderTimestamp;
	private Set demoOrderItemses = new HashSet(0);

	public DemoOrders() {
	}

	public DemoOrders(BigDecimal orderId, DemoCustomers demoCustomers) {
		this.orderId = orderId;
		this.demoCustomers = demoCustomers;
	}

	public DemoOrders(BigDecimal orderId, DemoUsers demoUsers,
			DemoCustomers demoCustomers, BigDecimal orderTotal,
			Date orderTimestamp, Set demoOrderItemses) {
		this.orderId = orderId;
		this.demoUsers = demoUsers;
		this.demoCustomers = demoCustomers;
		this.orderTotal = orderTotal;
		this.orderTimestamp = orderTimestamp;
		this.demoOrderItemses = demoOrderItemses;
	}

	public BigDecimal getOrderId() {
		return this.orderId;
	}

	public void setOrderId(BigDecimal orderId) {
		this.orderId = orderId;
	}

	public DemoUsers getDemoUsers() {
		return this.demoUsers;
	}

	public void setDemoUsers(DemoUsers demoUsers) {
		this.demoUsers = demoUsers;
	}

	public DemoCustomers getDemoCustomers() {
		return this.demoCustomers;
	}

	public void setDemoCustomers(DemoCustomers demoCustomers) {
		this.demoCustomers = demoCustomers;
	}

	public BigDecimal getOrderTotal() {
		return this.orderTotal;
	}

	public void setOrderTotal(BigDecimal orderTotal) {
		this.orderTotal = orderTotal;
	}

	public Date getOrderTimestamp() {
		return this.orderTimestamp;
	}

	public void setOrderTimestamp(Date orderTimestamp) {
		this.orderTimestamp = orderTimestamp;
	}

	public Set getDemoOrderItemses() {
		return this.demoOrderItemses;
	}

	public void setDemoOrderItemses(Set demoOrderItemses) {
		this.demoOrderItemses = demoOrderItemses;
	}

}
