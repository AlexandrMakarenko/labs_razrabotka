package domain;

public class Region {
	private Long id;
	private String RegionDescription;
	
	public Region(Long id, String RegionDescription) {
		this.id = id;
		this.RegionDescription = RegionDescription;
	}

	@Override
	public String toString() {
		return "Region {" + "id = " + id + ", RegionDescription = " + RegionDescription + "}";
	}
}
