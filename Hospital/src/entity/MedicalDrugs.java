package entity;

public class MedicalDrugs {
	private String name;
	private String imgSrc;
	private String detail;
	public MedicalDrugs(String name, String imgSrc, String detail) {
		this.name = name;
		this.imgSrc = imgSrc;
		this.detail = detail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
}
