import com.amaker.util.User;
import com.amaker.util.getConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet("/doAnswerServlet")
public class doAnswer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Enumeration e = request.getParameterNames();
        while(e.hasMoreElements()){
            String name = (String) e.nextElement();
            String value = request.getParameter(name);
            System.out.println(name+": "+value);
        }

        request.getRequestDispatcher("ok.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
