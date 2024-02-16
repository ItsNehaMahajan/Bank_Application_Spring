package BankDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import BankModel.Accounts;


@Component
public class AccountsDao {
         @Autowired
		private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
	public AccountsDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AccountsDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
    public  void insertNewAccount(Accounts accounts) {
		 hibernateTemplate.save(accounts);
		
		
	}
  
	@Transactional
	public  Accounts getAccount(int deposit) {
		return hibernateTemplate.get(Accounts.class, deposit);
	}

	 @Transactional
	public void deleteCustomer(int accno1) {
		 Accounts accounts = hibernateTemplate.get(Accounts.class, accno1); 
			hibernateTemplate.delete(accounts);
		
	}
	 
	 @Transactional
	    public List<Accounts> getAllAccounts() {
	    	return hibernateTemplate.loadAll( Accounts.class);
		}
	  

	 @Transactional
	public  void updateCustomer(Accounts accountsObj) {
		 hibernateTemplate.update(accountsObj);
		
	}

	

	

	 
}
