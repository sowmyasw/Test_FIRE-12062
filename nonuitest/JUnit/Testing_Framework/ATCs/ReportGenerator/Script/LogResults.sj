//Generates two reports.
//At project suite level, Log directory, a zipped .mht report is generated.
//At project level, Log directory, an unzipped html report is generated.
function GenerateReports()
{
  var fileName;
  var htmlReportPath;
  
  //The test report is named by the executing test.
  fileName = ProjectSuite.ConfigPath + "Log\\" + Project.TestItems.Current.Name + ".mht";
  
  //Path to save report in html files.
  htmlReportPath = ProjectSuite.ConfigPath + "Log\\";
  
  //Saves log file results in an .mht file in project folder.
  Log.SaveResultsAs(fileName, 2);
  
  //Saves log file results in an .html file in project folder.
  Log.SaveResultsAs(htmlReportPath, 1);
}