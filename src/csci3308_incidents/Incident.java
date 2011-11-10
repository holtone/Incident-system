package csci3308_incidents;

import java.util.Date;


public class Incident {
	private String summary;
	private Date time;
	private String[] parties;
	
	//Constructor
	
	public Incident(String inci_Summ, Date inci_Time, String[] inci_Parties)
	{
		summary = inci_Summ;
		time = inci_Time;
		parties = inci_Parties;
	}
	
	//Getters

	public String get_Summary()
	{
		return summary;
	}
	
	public Date get_Time()
	{
		return time;
	}
	
	public String[] get_Parties()
	{
		return parties;
	}
	
	//Setters
	
	public void set_Summary(String add_Summ)
	{
		summary = add_Summ;
	}
	
	public void set_Time(Date add_Time)
	{
		time = add_Time;
	}
	
	public void set_Parties(String[] add_Parties)
	{
		parties = add_Parties;
	}
	
}
