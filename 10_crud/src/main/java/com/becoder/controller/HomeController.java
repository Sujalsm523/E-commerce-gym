package com.becoder.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List; // Correct import for Java List

import com.becoder.dao.EmpDao;
import com.becoder.dao.UserDao;
import com.becoder.entity.Emp;
import com.becoder.entity.User;
import com.becoder.dao.AdminDao;
import com.becoder.entity.Admin;
import com.becoder.dao.OrderDao;
import com.becoder.entity.Order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
@Controller
public class HomeController {
	
	@Autowired
	private EmpDao empDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private AdminDao AdminDao;
	
	@Autowired
	private OrderDao OrderDao;
    
    @RequestMapping(path = "/home")
    public String home(Model m) {
    	
    	List<Emp> list = empDao.getAllEmp();
    	m.addAttribute("empList" , list);
    	
        return "home"; // This should resolve to /WEB-INF/views/home.jsp
    }

    @RequestMapping(path = "/addEmp")
    public String addEmp() {
        return "addEmp"; // This should resolve to /WEB-INF/views/add_Emp.jsp
    }
    @RequestMapping(path = "/createEmp" , method = RequestMethod.POST)
    public String createEmp(@ModelAttribute Emp emp,HttpSession session) {
    	System.out.println(emp);
    	// Ensure empDao is not null
        if (empDao == null) {
            System.out.println("empDao is null");
            return "error"; // Handle error gracefully
        }
    	
    	 int i =  empDao.saveEmp(emp);
    	 session.setAttribute("msg","Added Successfully");
    	
    	return"redirect:/addEmp";
    }
    @RequestMapping(path = "/editEmp/{id}")//edit the employee data
    public String editEmp(@PathVariable int id,Model m) {
    	Emp emp =empDao.getEmpById(id);
    	m.addAttribute("emp",emp);
    	
    	
    	return "edit_emp";	
    }
    @RequestMapping(path = "/updateEmp" , method = RequestMethod.POST)
    public String updateEmp(@ModelAttribute Emp emp,HttpSession session) {
    	
    	empDao.update(emp);
    	session.setAttribute("msg","Updated Succesfully");
    	return "redirect:/home";
    	
    	
    }
    @RequestMapping("/deleteEmp/{id}")
    public String deleteEmp(@PathVariable int id,HttpSession session) {
    	
    	empDao.deleteEmp(id);
    	session.setAttribute("msg","Member deleted sucessfully");
    	return "redirect:/home";
    }
    
    @RequestMapping("/Register")//when the url hits it will return the Register.jsp page
    public String registerPage() {
    	return "Register";
    }
    @RequestMapping("/Login")
    public String LoginPage() {
    	return "Login";
    }

    @RequestMapping(path="/createUser",method= RequestMethod.POST)
    public String register(@ModelAttribute User user,HttpSession session) {
    
    	System.out.println(user);
    	userDao.saveUser(user);
    	session.setAttribute("msg","User Registration Sucessfully" );
    	return "redirect:/Register";
    }
    
    @RequestMapping(path="/userlogin",method=RequestMethod.POST)
    public String login(@RequestParam("email") String em,@RequestParam("password")String pwd,HttpSession session) {
    	
    	User user=userDao.loginUser(em, pwd);

    	if(user!=null) {
    		session.setAttribute("loginuser",user);
    		return "profile";
    	}
    	else {
    		session.setAttribute("msg", "Invalid email and Password");
    		return "redirect:/Login";
    	}
    	
    	
    }
    @RequestMapping("/myProfile")
    public String myProfile(){
    	return "profile";
    }
    @RequestMapping("/feedback")
    public String Feedback(){
    	return "feedback";
    }
    @RequestMapping(path="/flex")
    public String Flexibilty(){
    	return "flex";
    }
    @RequestMapping("/weightloss")
    public String Weightloss(){
    	return "weightloss";
    }
    @RequestMapping(path="/strength")
    public String myStrength(){
    	return "Strength1";
    }
    @RequestMapping(path="/myworkout")
    public String myWorkout(){
    	return "workout";
    }
    @RequestMapping(path="/Mybalancediet")
    public String Balance(){
    	return "balance";
    }
    @RequestMapping(path="/Amuscle")
    public String Muscle(){
    	return "muscle";
    }
    
    
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
    	
    	HttpSession session=request.getSession();
    	session.removeAttribute("loginuser");
    	session.setAttribute("msg","Logout Sucessfully");
    	return "Login";
    }
    @RequestMapping(path = "/start")//starting page of the project
    public String start(Model m) {
    	
        return "start"; // This should resolve to /WEB-INF/views/home.jsp
    
}
    @RequestMapping(path = "/admin")
    public String admin(Model m) {
    	
        return "admin"; // This should resolve to /WEB-INF/views/home.jsp
    }
      

    @RequestMapping(path = "/adminlogin", method = RequestMethod.POST)
    public String Adminlogin(@RequestParam("username") String username,
                             @RequestParam("password") String password,
                             HttpSession session) {
        Admin admin = AdminDao.loginAdmin(username, password);
        
        if (admin != null) {
            // Login successful
            session.setAttribute("loginAdmin", admin);
            return "home"; // Navigate to home page on successful login
        } else {
            // Login failed
            session.setAttribute("msg", "Invalid Username and Password");
            return "admin"; // Stay on the login page to display the error message
        }
    }

    @RequestMapping(path = "userc")
    public String Userc(Model m){
    	return "userc";
    }

    @RequestMapping(path = "/cart")
    public String cartpage(Model m){
    	return "cart";
    }
    @RequestMapping(path = "/buy")
    public String buypage(Model m){
    	return "buy";
    }
    
    @RequestMapping(path = "/dietplan")
    public String processpage(Model m){
    	return "dietplan";
    }

@RequestMapping(path = "/diet")
public String dietpage(Model m){
	return "diet";
}
    @RequestMapping("/logoutt")
    public String logoutadmin(HttpServletRequest request){
    	
    	HttpSession session=request.getSession();
    	session.removeAttribute("loginAdmin");
    	session.setAttribute("msg","Logout Sucessfully");
    	return "admin";
    }
    @RequestMapping(path = "/supplement")
    public String supplementpage(Model m) {
    	
        return "supplement";
}

    @RequestMapping(path = "/submitOrder" , method = RequestMethod.POST)//helps to store the order details in the order_dtls table defined in the order.java  
    public String submitOrder(@ModelAttribute Order order,HttpSession session) {
    	System.out.println(order);
    	// Ensure empDao is not null
        if (OrderDao == null) {
            System.out.println("OrderDao is null");
            return "buy"; // Handle error gracefully
        }
    	
    	 int i =  OrderDao.saveOrder(order);
    	 session.setAttribute("msg"," Supplements will be delivered soon ");
    	
    	return"redirect:/buy";
    }
    
    @RequestMapping(path = "/orderD")//this method helps to list the order detail so that the user can read it
    public String OrderAdmin(Model m) {
    	List<Order> list = OrderDao.getAllOrder();
    	m.addAttribute("orderList" , list);
        return "OrderDetail"; // This should resolve to /WEB-INF/views/add_Emp.jsp
    }
    @RequestMapping("/deleteOrder/{id}")
    public String deleteOrder(@PathVariable int id,HttpSession session) {
    	
    	OrderDao.deleteOrder(id);
    	session.setAttribute("msg","Order deleted sucessfully");
    	return "OrderDetail";
    }
}
