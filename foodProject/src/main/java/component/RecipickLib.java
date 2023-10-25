package component;

import java.util.Date;

public class RecipickLib {
	private long date;
	private String dateYYMMDD;
	
//	RecipickLib(){
//		
//	}
	
	public long getDate() {
		return date;
	}

	public void setDate(long date) {
		this.date = date;
	}

	public String getDateYYMMDD() {
		return transDate(getDate());
	}

	public void setDateYYMMDD(String dateYYMMDD) {
		this.dateYYMMDD = dateYYMMDD;
	}
	
	public String transDate(Long date) {
		Date dt = new Date(date);
		int y = dt.getYear() + 1900;
		int m = dt.getMonth() + 1;
		int d = dt.getDate();
		return String.format("%d-%d-%d", y,m,d );
	}
}
