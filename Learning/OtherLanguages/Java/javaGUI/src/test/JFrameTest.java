package test;

import java.awt.FlowLayout;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class JFrameTest extends JFrame {

	private JLabel item1;

	public JFrameTest() {
		super("The title bar");
		setLayout(new FlowLayout());

		item1 = new JLabel("This is a sentence");
		item1.setToolTipText("This is gona show up on hover");
		add(item1);

	}

	public static void main(String[] args) {
		JFrameTest jft = new JFrameTest();
		jft.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		jft.setSize(275,180);
		jft.setVisible(true);

	}
}
