package classes;

import javax.servlet.*;
import java.util.Date;


public class DateContextListener implements ServletContextListener{
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("date", new Date());
    }
    
    public void contextDestroyed(ServletContextEvent sce){
        
    }
}
