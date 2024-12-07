package classes;
import java.io.File;
import java.io.InputStream;
import javax.servlet.*;
/**
 *
 * @author neila
 */
public class StadiumContextListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
       
        InputStream csvInputStream = context.getResourceAsStream("/csv/seats.csv");

        if (csvInputStream == null) {
            System.out.println("Resource not found: /csv/seats.csv");
        } else {
            System.out.println("Resource loaded successfully!");
}
        Stadium stadium = new Stadium(csvInputStream);
        context.setAttribute("stadium", stadium);
       
        
    }
    
    public void contextDestroyed(ServletContextEvent sce) {
        // Optional cleanup
    }
}
