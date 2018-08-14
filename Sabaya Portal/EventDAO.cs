using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// EventDAO class is the main class which interacts with the database. SQL Server express edition
/// has been used.
/// the event information is stored in a table named 'event' in the database.
///
/// Here is the table format:
/// event(event_id int, title varchar(100), description varchar(200),event_start datetime, event_end datetime)
/// event_id is the primary key
/// </summary>
public class EventDAO
{
	//change the connection string as per your database connection.
    private static string connectionString = ConfigurationManager.AppSettings["DBConnString"];

	//this method retrieves all events within range start-end
    public static List<CalendarEvent> getEvents(DateTime start, DateTime end)
    {   
        List<CalendarEvent> events = new List<CalendarEvent>();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT event_id, description, title, event_start, event_end, all_day FROM Event where event_start>=@start AND event_end<=@end", con);
        cmd.Parameters.Add("@start", SqlDbType.DateTime).Value = start;
        cmd.Parameters.Add("@end", SqlDbType.DateTime).Value = end;
        
        using (con)
        {
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                events.Add(new CalendarEvent() {
                    id = Convert.ToInt32(reader["event_id"]),
                    title = Convert.ToString(reader["title"]),
                    description = Convert.ToString(reader["description"]),
                    start = Convert.ToDateTime(reader["event_start"]),
                    end = Convert.ToDateTime(reader["event_end"]),
                    allDay = Convert.ToBoolean(reader["all_day"])
                });
            }
        }
        return events;
        //side note: if you want to show events only related to particular users,
        //if user id of that user is stored in session as Session["userid"]
        //the event table also contains an extra field named 'user_id' to mark the event for that particular user
        //then you can modify the SQL as:
        //SELECT event_id, description, title, event_start, event_end FROM event where user_id=@user_id AND event_start>=@start AND event_end<=@end
        //then add paramter as:cmd.Parameters.AddWithValue("@user_id", HttpContext.Current.Session["userid"]);
    }


}
