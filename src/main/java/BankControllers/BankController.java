package BankControllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import BankDao.*;
import BankModel.*;;

@Controller
public class BankController 
{
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Accounts accounts = (Accounts) context.getBean("accounts");
	AccountsDao accountsDao = (AccountsDao) context.getBean("accountsDao");
	
	@RequestMapping("/")
	public String openHome()
	{
		return "Home";
	}
	
	@RequestMapping("/Home")
	public String openHome1()
	{
		return "Home";
	}
	
	@RequestMapping("/Login")
	public String AdminLogin()
	{
		return "Login";
	}
	@RequestMapping("/AdminHome")
	public String AdminAccount()
	{
		return "AdminHome";
	}
	

	@RequestMapping("/AddAccount")
	public String addaccount()
	{
		return "AddAccount";
	}
	
	
	@RequestMapping(path="/afterLoginSubmit",method=RequestMethod.POST)
	public String checkLogin(HttpServletRequest request)
	{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		if(name.equals("admin@gmail.com") && password.equals("admin"))
		{
			return "AdminHome";
		}
		else
		{
			return "error";
		}
	}
	
	@RequestMapping(path="/AddAccountSubmit",method=RequestMethod.POST)
	public String AddAccount(@ModelAttribute Accounts accounts)
	{
		try
		{
			accountsDao.insertNewAccount(accounts);
			System.out.println("Customer Added..!!");
			return "success";
		}
		catch(Exception e)
		{
			System.out.println("Failed to add..!!");
			e.printStackTrace();
			return "error";
		}
		
    }
	
	@RequestMapping("/ViewAccount")
	public String viewAccount(Model m)
	{
		return "ViewAccount";
	}
   
	@RequestMapping("/ViewInfo")
	public String viewinfo(Model m)
	{
		return "ViewInfo";
	}

	
	@RequestMapping(path="/viewAccountsubmit",method=RequestMethod.POST)
	public String  view(Model model,HttpServletRequest request)
	{ 
		int accNo=Integer.parseInt(request.getParameter("accNo"));
		accounts=accountsDao.getAccount(accNo);
		model.addAttribute("accounts", accounts);
		return  "ViewInfo";
		
		
	}
	

	@RequestMapping("/Deposit")
	public String Deposit()
	{
		return "Deposit";
	}
	
	@RequestMapping("/Withdraw")
	public String Withdraw()
	{
		return "Withdraw";
	}
	
	
	@RequestMapping(path="/afterdeposit",method=RequestMethod.POST)
	public String  viewdeposit(Model model,HttpServletRequest request)
	{ 
		int accNo = Integer.parseInt(request.getParameter("accNo"));
		int Deposit=Integer.parseInt(request.getParameter("depAmt"));
		
		accounts = accountsDao.getAccount(accNo);
		
		  
		int  currentBalance = (int) accounts.getAccBal();
		int  balance = currentBalance + Deposit;
           
         accounts.setAccBal(balance);
         accountsDao.updateCustomer(accounts);
           

		model.addAttribute("accounts", accounts);
		
		return  "ViewInfo";
		
		
	}
	
	@RequestMapping(path="/afterwithdraw",method=RequestMethod.POST)
	public String  viewWithdraw(Model model,HttpServletRequest request)
	{ 
		int accNo = Integer.parseInt(request.getParameter("accNo"));
		int withdraw=Integer.parseInt(request.getParameter("withAmt"));
		
		accounts = accountsDao.getAccount(accNo);
		
		  
		int  currentBalance = (int) accounts.getAccBal();
		int  balance = currentBalance - withdraw;
           
         accounts.setAccBal(balance);
         accountsDao.updateCustomer(accounts);
           

		model.addAttribute("accounts", accounts);
		
		return  "ViewInfo";
		
		
	}
	@RequestMapping("/DeleteAccount")
	public String DeleteAccount()
	{
		return "DeleteAccount";
	}
	
	
	@RequestMapping(path="/afterDelete",method=RequestMethod.POST)
	public String afterDelete(HttpServletRequest request)
	{
		int accNo = Integer.parseInt(request.getParameter("accNo"));
		
		accountsDao.deleteCustomer(accNo);
		return "Successful";
	}

	
}