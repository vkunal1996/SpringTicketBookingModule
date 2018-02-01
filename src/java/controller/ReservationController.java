/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.web.servlet.mvc.SimpleFormController;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.HibernateUtil;
import model.TrainDetails;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 *
 * @author vkunal1996
 */
public class ReservationController extends SimpleFormController {
    
    public ReservationController() {
     
        setCommandClass(TrainDetails.class);
        setCommandName("reservationDetails");
    }
    
     protected ModelAndView onSubmit(HttpServletRequest request,
          HttpServletResponse response, Object command, BindException errors)	
          throws Exception 
{
    List details = null;
    Query q;
    System.out.print("hello");
    ModelAndView mv=new ModelAndView("Reservationdetails");
    String source=request.getParameter("source");
    String destination=request.getParameter("destination");
    System.out.print(destination);
    String ticket=request.getParameter("ticketType");
    try{

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
      
 
        
            q=session.createQuery("from TrainDetails where (Source=:source and Destination=:destination) and Ticket=:ticket");
            q.setParameter("source",source);
            q.setParameter("destination",destination);
            q.setParameter("ticket",ticket);
            details=q.list();
            mv.addObject("myVar",details);
            System.out.print(details);
            System.out.print(source + destination + ticket);
            session.getTransaction().commit();
       
        
        
    
 
        //Commit the transaction
    //    HibernateUtil.shutdown();
                

    }
    catch(Exception e){}
    if(details==null)
    {
        return new ModelAndView("NoTrain");
    }
    return mv;
 
}
     @ModelAttribute("source")
      public Map<String, String> getCityList() {
      Map<String, String> cityList = new HashMap<String, String>();
      cityList.put("JALANDHAR", "JALANDHAR");
      cityList.put("AMBALA", "AMBALA");
      cityList.put("LUDHIANA", "LUDHIANA");
      cityList.put("PATIALA", "PATIALA");
      cityList.put("PHAGWARA", "PHAGWARA");
      cityList.put("CHANDIGARH", "CHANDIGARH");
      return cityList;
   }
   @ModelAttribute("cityList1")
      public Map<String, String> getCityList1() {
      Map<String, String> cityList1 = new HashMap<String, String>();
      cityList1.put("JALANDHAR", "JALANDHAR");
      cityList1.put("AMBALA", "AMBALA");
      cityList1.put("LUDHIANA", "LUDHIANA");
      cityList1.put("PATIALA", "PATIALA");
      cityList1.put("PHAGWARA", "PHAGWARA");
      cityList1.put("CHANDIGARH", "CHANDIGARH");
      return cityList1;
   }
}
