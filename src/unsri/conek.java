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
   //ciptakan objek dari class connection bawakan java dimana fungsi dari 
    //Connection : mempresentasikan suatu koneksi dengan suatu data source, juga digunakan untuk membuat objek Statement, PreparedStatement dan CallableStatement.
    public static Connection GetConnection()throws SQLException{ //membuat prosedur getconnection
        //SQLException : suatu class exception yang membungkus kesalahan (error) pengaksesan database.
        //dimana Keyword throws digunakan dalam suatu method atau kelas yang mungkin menghasilkan suatu kesalahan sehingga perlu ditangkap errornya.
        if(koneksi==null)
        {          
            koneksi=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Simak","root","");
            
        }
        return koneksi;
    }
}
