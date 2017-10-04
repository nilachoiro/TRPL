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
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Rini
 */
public class c_Direktur {

    private View.Direktur_Home the_v;
    boolean statusButton_Profile = true;

    public c_Direktur() {
        the_v = new View.Direktur_Home();
        the_v.setVisible(true);
        the_v.getPop_Profile().setVisible(false);
        the_v.tombolProfile(new profileListner());
        the_v.tombolLogout(new logoutListener());
    }

    private class profileListner implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent ae) {
            if (statusButton_Profile) {
                the_v.getPop_Profile().setVisible(true);
                statusButton_Profile = false;
            } else {
                the_v.getPop_Profile().setVisible(false);
                statusButton_Profile = true;
            }

        }

    }

    private class logoutListener implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            JOptionPane pane = new JOptionPane("Anda Yakin akan keluar");
            Object[] options = new String[]{"YES", "NO"};
            pane.setOptions(options);
            JDialog dialog = pane.createDialog(new JFrame(), "Message");
            dialog.show();
            Object obj = pane.getValue();
            if (obj.equals("YES")) {
                try {
                    new C_Login_Pegawai();
                } catch (SQLException ex) {
                    Logger.getLogger(c_Direktur.class.getName()).log(Level.SEVERE, null, ex);
                }
                the_v.dispose();
            } else {
                the_v.getPop_Profile().setVisible(false);
            }

        }

    }
}
