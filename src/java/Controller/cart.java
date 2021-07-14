package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.cartBean;
import Dao.cartDao;

public class cart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter(); 
        
        String name=request.getParameter("name");  
        String p=request.getParameter("price");  
        double e = Double.parseDouble(p);
        String q=request.getParameter("quantity"); 
        int quantity = Integer.parseInt(q);
        double tp = 1+(e * quantity);
        String price = String.format("%.2f", e);
        String tprice = String.format("%.2f", tp);
        String username=request.getParameter("user");
        
        cartBean c = new cartBean();
        
        c.setUsername(username);
        c.setName(name);
        c.setPrice(price);
        c.setQuantity(quantity);
        c.setTprice(tprice);
        
        int status = cartDao.saveCart(c);
        
        if(status>0){    
            request.getRequestDispatcher("addCartSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("addCartError.jsp").include(request, response);  
        }  
          
        out.close();
    }


}
