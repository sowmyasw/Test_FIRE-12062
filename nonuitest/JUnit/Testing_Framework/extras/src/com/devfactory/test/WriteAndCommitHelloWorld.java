package com.devfactory.test;

import java.io.File;
import java.io.FileWriter;

public class WriteAndCommitHelloWorld {
	public static boolean modifyHelloWorld(){
		String filePath="F:\\oDesk\\QA\\QAProduct\\trunk\\dev\\src\\src\\com\\devfactory\\qa\\sample\\HelloWorld.java";
		
		
		try{
			FileWriter appendFile = new FileWriter(filePath, true);
			//appendFile.write("Try data update");
			appendFile.write("");
			appendFile.close();
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	
	public static boolean callUpdateCommitBat()
	{
		String filePath="F:\\oDesk\\QA\\QAProduct\\TF\\standard\\clean\\trunk\\Testing_Framework\\extras\\scripts\\update.bat";
		try{
			//Runtime.getRuntime().exec(filePath, null, new File("."));
			Runtime.getRuntime().exec("F:\\oDesk\\QA\\QAProduct\\TF\\standard\\clean\\trunk\\Testing_Framework\\extras\\scripts\\update.bat", null, new File("."));
			Thread.sleep(40000);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
}
