import java.util.Scanner;

import javax.swing.JOptionPane;


public class teste{
	private String ola;
	private String cucu;
	public static void main(String[] args){

		Scanner scan = new Scanner(System.in);
		JOptionPane.showMessageDialog(null, "oh no!");
		
	}

	public void setCucu(String cucu) {
		this.cucu = cucu;
	}

	public String getCucu() {
		return cucu;
	}

	public void setOla(String ola) {
		this.ola = ola;
	}

	public String getOla() {
		return ola;
	}
}
