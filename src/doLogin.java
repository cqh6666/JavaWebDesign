import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import com.amaker.util.*;
import java.sql.*;

@WebServlet("/doLoginServlet")
public class doLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String username="";
        String password ="";

        //获取username password 传值
        username=request.getParameter("username");
        password=request.getParameter("password");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        //把注册成功的用户对象保存在session对象中
//        request.getSession().setAttribute("loginUser", user);

        String sql = " select * from user_info where name='" + username + "' and password='"+password+"'";
        try{
            getConnection gc = new getConnection();
            ResultSet rs = gc.query(sql);
            if(rs.next()){
//                HttpSession session = request.getSession();
//                session.setAttribute("username",username);
                request.setAttribute("user",user);
                doGet(request,response);
            }else{
                response.sendRedirect("error.jsp");
            }
        }catch(SQLException e){
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("juan.jsp").forward(request,response);
        System.out.println("跳入到get");
        return;
    }
}
