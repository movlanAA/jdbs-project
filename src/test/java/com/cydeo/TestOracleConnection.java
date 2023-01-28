package com.cydeo;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        String dbUrl="jdbc:oracle:thin:@44.192.23.35:1521:XE"; //44.192.23.35   52.201.70.221
        String dbUsername="hr";
        String dbPassword="hr";

            /*
            HOW TO INIT VARIABLES ?
                -- MAC --> OPT + ENTER
                -- WIN  --> ALT + ENTER
             */

        // DriverManager Class getCOnnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from regions");

            /*
            How to run query from Java file
                - Click over Query (dont choose anywhere )
                    - MAC --> CMD+ENTER
                    - WIN --> CTRL+ENTER
                - Choose session
             */


        // GETTING DATA
        // next() ---> Moves the cursor forward one row from its current position.
/*
            System.out.println("------ FIRST ROW -------");
            rs.next();
            // pointer shows the first row
            // how to get data
                // rs.getInt(index)  --> it returns integer. Index start from 1 into SQL.It refers column position
                    // it returns int
                    System.out.println(rs.getInt(1));  // 1
                    // it returns String
                    System.out.println(rs.getString(1));  // 1
                // rs.getInt(columLabel)
                    System.out.println(rs.getInt("REGION_ID"));
                    System.out.println(rs.getString("REGION_ID"));
            // get me Europe
            System.out.println(rs.getString(2)); // Europe
            System.out.println(rs.getString("REGION_NAME")); // Europe



            System.out.println("------ SECOND ROW -------");
            rs.next();
            // 2 SECOND ROW    2 - Americas
            System.out.println(rs.getString(1)+" - "+rs.getString(2));
            System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));
            System.out.println("------ THIRD ROW -------");
            // 3 THIRD ROW    3 - Asia
            rs.next();
            System.out.println(rs.getString(1)+" - "+rs.getString(2));
            System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));
            System.out.println("------ 4TH ROW -------");
            // 4 TH ROW    4 - Middle East and Africa
            rs.next();
            System.out.println(rs.getString(1)+" - "+rs.getString(2));
            System.out.println(rs.getString("REGION_ID")+" - "+rs.getString("REGION_NAME"));
            // WHAT if we have 1000 line ?*/


        while(rs.next()){
            System.out.println("-----------------");
            System.out.println(rs.getString(1)+" - "+rs.getString(2));

        }


        // close connections
        rs.close();
        statement.close();
        conn.close();


    }
}