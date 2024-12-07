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
        Stadium stadium = new Stadium();
        context.setAttribute("stadium", stadium);
    }
    
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
