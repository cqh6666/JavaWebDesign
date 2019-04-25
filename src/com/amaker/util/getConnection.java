package com.amaker.util;
import java.io.*;
import java.sql.*;
import java.util.Properties;


public class getConnection {

    String driver = null;
    String url = null;
    String user = null;
    String psd = null;

    Connection conn = null;
    Statement stm = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;

    public Connection getConn(){
        Properties pro = new Properties();
        try{
            pro.load(this.getClass().getClassLoader().getResourceAsStream("DBConfig.properties"));
            driver = pro.getProperty("driver");
            url = pro.getProperty("url");
            user = pro.getProperty("user");
            psd = pro.getProperty("password");
        }catch(IOException e){
            e.printStackTrace();
        }

        try{
            Class.forName(driver);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }

        try{
            conn = DriverManager.getConnection(url,user,psd);
            return conn;
        }catch (SQLException e){
            e.printStackTrace();
        }

        return null;
    }

    public ResultSet query(String sql){
        try{
            conn = getConn();
            stm = conn.createStatement();
            rs = stm.executeQuery(sql);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return rs;
    }

    public int answer(){
        try{
            conn = getConn();
            String sql = "";
            pstm = conn.prepareStatement(sql);

        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(User user){
        try{
            int i = 0;
            conn = getConn();
            String sql = "insert into user_info values(?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1,user.getUsername());
            pstm.setString(2,user.getPassword());
            i = pstm.executeUpdate();
            return i;
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public void close(){
        try{
            if(rs!=null)rs.close();
            if(stm!=null)stm.close();
            if(pstm!=null)pstm.close();
            if(conn!=null)conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
