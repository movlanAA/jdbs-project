package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {


    /*
       To create Test Method
           MAC--> CMD+N
           WIN --> CTRL+N
    */
    String dbUrl="jdbc:oracle:thin:@44.192.23.35:1521:XE";  //34.230.35.214  174.129.150.19  44.192.23.35
    String dbUsername="hr";
    String dbPassword="hr";

    @Test
    void task() throws SQLException {
        // DriverManager Class getCOnnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from departments where manager_id is not null");


        // 10-Administration-200-1700
        while(rs.next()) {

            System.out.println(rs.getString(1) + "-" + rs.getString(2) +
                    "-" + rs.getString(3) + "-" + rs.getString(4));

        }

        rs=statement.executeQuery(" select * from REGIONS");

        // 1-Europe
        // 2-Americas
        // 3-Asia

        // get me all query results dynamically
        System.out.println("----- SECOND QUERY ------");
        while(rs.next()) {


            System.out.println(rs.getString(1) + "-" + rs.getString(2));
            //System.out.println(rs.getString("REGION_ID")+"-"+rs.getString("REGION_NAME"));
        }


        // close connections
        rs.close();
        statement.close();
        conn.close();
        }
}
