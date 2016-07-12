package test;

import java.awt.FlowLayout;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.lang.reflect.Field;
import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JOptionPane;

public class EventTest extends JFrame {

	private JTextField item1;
	private JTextField item2;
	private JTextField item3;
	private JPasswordField passwordField;

	public EventTest() {
		super("The title");
		//setLayout(new FlowLayout());

		item1 = new JTextField(10);
		add(item1);

		item2 = new JTextField("enter text here");
		add(item2);

		item3 = new JTextField("uneditable", 20);
		item3.setEditable(false);
		add(item3);

		passwordField = new JPasswordField("mypassword");
		add(passwordField);

		thehandler handler = new thehandler();
		item1.addActionListener(handler);
		item2.addActionListener(handler);
		item3.addActionListener(handler);
		passwordField.addActionListener(handler);

	}

	private class thehandler implements ActionListener {

		public void actionPerformed(ActionEvent event) {

			String string = "";

			if (event.getSource() == item1) {
				string = String.format("Field 1: %s", event.getActionCommand());
			} else if (event.getSource() == item2) {
				string = String.format("Field 2: %s", event.getActionCommand());
			} else if (event.getSource() == item3) {
				string = String.format("Field 3: %s", event.getActionCommand());
			} else if (event.getSource() == passwordField) {
				string = String.format("Password field is: %s", event.getActionCommand());
			}

			JOptionPane.showMessageDialog(null, string);

		}

	}

	public static void main(String[] args) {
		
		EventTest et = new EventTest();
		et.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		et.setSize(200, 300);
		et.setVisible(true);
	}
}
