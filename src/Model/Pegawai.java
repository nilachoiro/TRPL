/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Pegawai extends Model_Master {

    ResultSet rs;
    private String Jabatan;

    public Pegawai() throws SQLException {
        super();
    }

    public boolean insertDataPeg(int idAset, int idPlayer) {
        String query = "INSERT INTO `aset` (`IdAset`, `IdPlayer`, `JumlahKandang`, `JumlahKoin`, `JumlahAir`, `JumlahRumput`, `JumlahSusu`, `JumlahNutrisi`, `JumlahObat`, `JumlahSuntik`, `playTime`) VALUES ('"
                + idAset + "', '" + idPlayer + "', '1', '2000', '10', '10', '0', '0', '0', '0', '0')";
        return getStatusQuery(query);
    }

    public boolean getPegawai(String username, String password) throws SQLException {
        String query = "SELECT * FROM `pegawai` WHERE Username = '" + username + "' AND Password ='" + password + "'";
        boolean status = false;
        try {
            rs = con.getResult(query);
            if (rs.next()) {
                status = true;
                Jabatan = rs.getString("Jabatan");
            }
        } catch (SQLException e) {
            System.out.println("Salah");
        }
        return status;
    }
     public String getJabatan() {
        return Jabatan;
    }

}
