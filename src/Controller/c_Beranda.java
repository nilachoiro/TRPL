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

/**
 *
 * @author Rini
 */
public class c_Beranda {

    private View.Siffing_Home_Aplikasi the_v;

    public c_Beranda() {
        the_v = new View.Siffing_Home_Aplikasi();
        the_v.setVisible(true);
        the_v.tombolLogin(new LoginListener());
    }
    private class LoginListener implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent ae) {
            try {
                new C_Login_Pegawai();
            } catch (SQLException ex) {
                Logger.getLogger(c_Beranda.class.getName()).log(Level.SEVERE, null, ex);
            }
            the_v.dispose();
        }
        
    }

}
