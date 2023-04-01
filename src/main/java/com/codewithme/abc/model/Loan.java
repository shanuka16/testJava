package com.codewithme.abc.model;

import java.util.Date;

public class Loan {
	
	private int customerIdLoan;
	private double usedAmount;
	private double loanBalance;
	private double installmentOne;
	private double installmentTwo;
	private double installmentThree;
	private Date startDate;
	private Date endDate;
	
	public Loan(int customerIdLoan, double usedAmount, double loanBalance, double installmentOne, double installmentTwo,
			double installmentThree, Date startDate, Date endDate) {
		super();
		this.customerIdLoan = customerIdLoan;
		this.usedAmount = usedAmount;
		this.loanBalance = loanBalance;
		this.installmentOne = installmentOne;
		this.installmentTwo = installmentTwo;
		this.installmentThree = installmentThree;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public Loan() {}

	public int getCustomerIdLoan() {
		return customerIdLoan;
	}

	public void setCustomerIdLoan(int customerIdLoan) {
		this.customerIdLoan = customerIdLoan;
	}

	public double getUsedAmount() {
		return usedAmount;
	}

	public void setUsedAmount(double usedAmount) {
		this.usedAmount = usedAmount;
	}

	public double getLoanBalance() {
		return loanBalance;
	}

	public void setLoanBalance(double loanBalance) {
		this.loanBalance = loanBalance;
	}

	public double getInstallmentOne() {
		return installmentOne;
	}

	public void setInstallmentOne(double installmentOne) {
		this.installmentOne = installmentOne;
	}

	public double getInstallmentTwo() {
		return installmentTwo;
	}

	public void setInstallmentTwo(double installmentTwo) {
		this.installmentTwo = installmentTwo;
	}

	public double getInstallmentThree() {
		return installmentThree;
	}

	public void setInstallmentThree(double installmentThree) {
		this.installmentThree = installmentThree;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
}
