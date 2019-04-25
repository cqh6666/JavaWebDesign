import com.amaker.util.User;
import com.amaker.util.getConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/doRegisterServlet")
public class doRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usern="";
        String passw ="";

        //获取username password 传值
        usern=request.getParameter("username");
        passw=request.getParameter("password");

        User user = new User(usern,passw);

        try{
            getConnection gc = new getConnection();
            int flag = gc.update(user);
            String result = "注册失败";
            if(flag > 0){
                result = "注册成功";
            }
            HttpSession session = request.getSession();
            session.setAttribute("result",result);
            request.getRequestDispatcher("doRegister.jsp").forward(request,response);
        }catch(Exception e){
            e.printStackTrace();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
