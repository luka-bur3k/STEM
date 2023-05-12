package com.calendar.service;

import java.nio.channels.ConnectionPendingException;
import java.sql.*;
import java.time.LocalDate;


public class CalendarCellServiceDB {
    
    private Connection connectionToDatabase;

    public CalendarCellServiceDB() throws ConnectionPendingException
    {
        String url = "jdbc:postgresql://localhost/dateEntry";
        String username = "postgres";
        String password = "*";  

        try {
            connectionToDatabase = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.err.println("[!] Connection to database failed");
            throw new ConnectionPendingException();
        }
    }

    public ResultSet fetchDate(LocalDate date)
    {
        String QUERY = "SELECT * FROM entries";

        ResultSet result = null;
        try {
            Statement statement = connectionToDatabase.createStatement();
            result = statement.executeQuery(QUERY);
        } catch (SQLException e) {
            System.err.println("[!] Unable to fetch data");
        }

        return result;
    }

}
