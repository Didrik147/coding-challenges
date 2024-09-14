import static java.lang.System.*;
import static javax.swing.JOptionPane.*;
import java.io.*;
import java.util.*;

public class ReadTableTxt {
	public static void main(String[] args) throws Exception {
		File inputFile = new File("table.txt");
		Scanner reader = new Scanner(inputFile);

		FileWriter outputWriter = new FileWriter("fillTable.sql");

		String line;


		int lineNumber = 0;
		String outputString;

		outputWriter.write("INSERT INTO World(name, continent, area, population, gdp) VALUES\n");


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
			outputString += "('" + lineArr[0] + "', ";

			// Second column
			outputString += "'" + lineArr[1] + "', ";
			
			// Third column
			outputString += lineArr[2] + ", ";

			// Column 4
			outputString += lineArr[3] + ", ";

			// Column 5
			outputString += lineArr[4] + ")";


			outputWriter.write(outputString);
		}

		outputWriter.write(";");

		reader.close();	
		outputWriter.close();
	}

}