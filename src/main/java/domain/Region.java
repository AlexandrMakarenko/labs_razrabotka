package domain;

public class Region {
	private Long id;
	private String RegionDescription;
	
	public Region(Long id, String RegionDescription) {
		this.id = id;
		this.RegionDescription = RegionDescription;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getRegionDescription() {
		return RegionDescription;
	}
	public void setRegionDescription(String RegionDescription) {
		this.RegionDescription = RegionDescription;
	}

	@Override
	public String toString() {
		return "Region {" + "id = " + id + ", RegionDescription = " + RegionDescription + "}";
	}
}
