package BankModel;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Accounts {
	
	@Id
	private int accNo;
	private String accName;
	private String accMob;
	private String accType;
	private double accBal;
	
	public int getAccNo() {
		return accNo;
	}
	
	
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	
	public String getAccName() {
		return accName;
	}
	
	public void setAccName(String accName) {
		this.accName = accName;
	}
	
	public String getAccMob() {
		return accMob;
	}
	
	public void setAccMob(String string) {
		this.accMob = string;
	}
	
	public String getAccType() {
		return accType;
	}
	
	public void setAccType(String accType) {
		this.accType = accType;
	}
	
	public double getAccBal() {
		return accBal;
	}
	
	public void setAccBal(double accBal) {
		this.accBal = accBal;
	}


	public Accounts() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Accounts(int accNo, String accName, String accMob, String accType, double accBal) {
		super();
		this.accNo = accNo;
		this.accName = accName;
		this.accMob = accMob;
		this.accType = accType;
		this.accBal = accBal;
	}


	@Override
	public String toString() {
		return "Accounts [accNo=" + accNo + ", accName=" + accName + ", accMob=" + accMob + ", accType=" + accType
				+ ", accBal=" + accBal + "]";
	}
	
	
	
	

	

}
