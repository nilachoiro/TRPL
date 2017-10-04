    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DB_Koneksi.Koneksi;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Rini
 */
public class Model_Master {
    Koneksi con;

    public Model_Master() throws SQLException {
        con = new Koneksi();
    }

    protected int checkId(String query) throws SQLException {
        int id = 0;
        ResultSet hasil;
        do {
            id++;
            hasil = con.getResult(query + id);
        } while (hasil.next());
        return id;
    }

    public boolean getStatusQuery(String query) {
        boolean succesInput = false;
        try {
            con.executeQuery(query);
            succesInput = true;
        } catch (SQLException ex) {
            succesInput = false;
        }
        return succesInput;
    }

    public int getDataInt(String query) throws SQLException {
        ResultSet hasil = con.getResult(query);
        hasil.next();
        int data = hasil.getInt(1);
        return data;
    }
}
