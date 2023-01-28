package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class PO2_Library_DBTest {


    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;


    @Test
    public void test1(){

        // create a connection
        DB_Util.createConnection(url,username,password);

        // Run Query
        DB_Util.runQuery("select count(*) from books");


        // get data from DB
        String expectedBookCount=DB_Util.getFirstRowFirstColumn();

        /*
        Assume that we get this info from UI with automation
         */

        // get data from UI
        String actualBookCount="3963"; //3975  //3963

        /*
        Which one is expected / actual ?
        Actual -->   UI --> Since data comes from databasse with the help backend
                        There can be problem while we are binding data to UI.That is why we are
                        doing database test
        Expected --> DB --> UI needs to get data from database as it is .So we need to compare
                    actual (UI)  vs expected (DB )
         */

        /*
        CONNECTION HAS FAILED No suitable driver found for jdbc:mysql://34.230.35.214:3306/library2
        Solution *--> Add mysql driver to pom
            <!-- MySQL Driver   -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.25</version>
        </dependency>
         */

        //compare
        Assertions.assertEquals(expectedBookCount,actualBookCount);

        // close it
        DB_Util.destroy();


    }



    // HOMEWORK

    /*
    Do same task for user count
        - Get data from datasbase to see how many user we have
        - Get data from UI to see how many user we have
        - Assertions
     */

    /*
    Do same task for borrowed book
        - Get data from datasbase to see how many bookborrowed
        - Get data from UI to see how many bookborrowed
        - Assertions
    */




    }

