import static java.lang.System.*;
import static javax.swing.JOptionPane.*;
import java.io.*;
import java.util.*;

public class CreateSQL {
	public static void main(String[] args) throws Exception {
		fillTable();	
	}

	// Ikke ferdig, men tror det er for mye arbeid å lage noe generelt her
	private static void createTable() throws Exception {
		File inputFile = new File("createTable.txt");
		Scanner reader = new Scanner(inputFile);


		String tableName = "Employees";
		String[] columnNames = {"id", "name"};
		String[] types = {"int", "varchar"};

		FileWriter outputWriter = new FileWriter("createTable.sql");

		String line;

		int lineNumber = 0;
		String outputString;

		outputWriter.write("CREATE TABLE " + tableName + "(\n");


		while(reader.hasNextLine()){
			lineNumber++;
			line = reader.nextLine();
			line = line.replaceAll("\\s+", "");
			line = line.substring(1);
			String[] lineArr = line.split("[|]");

			outputString = "";

			outputString += "\t";

			outputString += lineArr[0] + "  " + lineArr[1] + ",\n";

			outputWriter.write(outputString);
		}

		outputWriter.write("\tPRIMARY KEY (" + columnNames[0] + ")\n");
		outputWriter.write(");");

		reader.close();	
		outputWriter.close();
	}

	private static void fillTable() throws Exception {
		File inputFile = new File("fillTable.txt");
		Scanner reader = new Scanner(inputFile);

		FileWriter outputWriter = new FileWriter("fillTable.sql");

		String line;


		int lineNumber = 0;
		String outputString;

		outputWriter.write("INSERT INTO Transactions( transaction_id , visit_id , amount) VALUES\n");


		while(reader.hasNextLine()){
			lineNumber++;
			line = reader.nextLine();
			line = line.replaceAll("\\s+", "");
			line = line.substring(1);
			String[] lineArr = line.split("[|]");

			outputString = "";
			
			if (lineNumber > 1){
				outputString += ",\n";
			}

			outputString += "\t";

			// First column
			outputString += "(" + lineArr[0] + ", ";

			// Second column
			outputString += "" + lineArr[1] + ", ";

			// Coumn 3
			//outputString += "'" + lineArr[2] + "', ";

			// Last column
			outputString += "" + lineArr[2] + ")";


			outputWriter.write(outputString);
		}

		outputWriter.write(";");

		reader.close();	
		outputWriter.close();
	}

}