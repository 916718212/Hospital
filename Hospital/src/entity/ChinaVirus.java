package entity;

public class ChinaVirus {
	private String  year;
	private String  md;
	private String  detail;
	public ChinaVirus(String year, String md, String detail) {
		super();
		this.year = year;
		this.md = md;
		this.detail = detail;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMd() {
		return md;
	}
	public void setMd(String md) {
		this.md = md;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
}
