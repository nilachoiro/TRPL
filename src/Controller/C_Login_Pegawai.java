/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author askdjsafk
 */
public class C_Login_Pegawai {
    private View.Sifings_Login the_V;
    private Model.Pegawai the_M;

    public C_Login_Pegawai() throws SQLException {
        the_V = new View.Sifings_Login();
        the_M = new Model.Pegawai();
        the_V.tombolLogin(new loginListener());
        the_V.setVisible(true);
    }
     private class loginListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            if (the_V.getUsername().isEmpty() && the_V.getPassword().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Silahkan masukkan username "
                        + "dan password Anda.", "Informasi Untuk anda", JOptionPane.INFORMATION_MESSAGE);
            } else if (the_V.getUsername().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Silahkan masukkan username anda",
                        "Informasi Untuk anda", JOptionPane.INFORMATION_MESSAGE);
            } else if (the_V.getPassword().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Silahkan masukkan password anda",
                        "Informasi Untuk anda", JOptionPane.INFORMATION_MESSAGE);
            } else {
                try {
                    if (the_M.getPegawai(the_V.getUsername(), the_V.getPassword())) {
                        if (the_M.getJabatan().equalsIgnoreCase("Direktur")) {
                            System.out.println(the_M.getJabatan());
                            new c_Direktur();
                            the_V.dispose();
                        } 
                    } else {
                         JOptionPane.showMessageDialog(null, "Anda Tidak terdaftar",
                        "Informasi Untuk anda", JOptionPane.INFORMATION_MESSAGE);
                         the_V.setusername("");
                         the_V.setpassword("");
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(C_Login_Pegawai.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }
     
}
