/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unsri;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sholahul Fajri
 */
public class conek {
    private static Connection koneksi;
    public static Connection GetConnection()throws SQLException{
        if(koneksi==null)
        {
            new Driver();
            
            koneksi=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dbperkuliahan","root","");
            
        }
        return koneksi;
    }
}
