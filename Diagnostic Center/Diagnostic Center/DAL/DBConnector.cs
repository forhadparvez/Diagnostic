using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBConnector
/// </summary>
public class DBConnector
{
     
	public DBConnector()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string ConnString()
    {
       
       //string connectionString = @"Server=DESKTOP-JA0PC0I\SQLSERVER; Database=Diagnostic_DB; Trusted_Connection=true;";
       // return connectionString;
        return @"Server=DESKTOP-JA0PC0I\SQLSERVER; Database=Diagnostic_DB; Trusted_Connection=true;";
    }
}