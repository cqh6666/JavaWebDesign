package com.amaker.util;

import java.sql.Connection;

public class Test {
    public static void main(String[] args){
        getConnection gc = new getConnection();
        Connection conn = gc.getConn();
        System.out.println(conn);
    }
}
