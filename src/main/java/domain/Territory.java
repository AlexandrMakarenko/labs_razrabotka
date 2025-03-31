package domain;

public class Territory {
	private Long id;
	private Long RegionId;
	private String Description;
	
	public Territory(Long id, Long RegionId, String Description) {
		this.id = id;
		this.RegionId = RegionId;
		this.Description = Description;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public Long getRegionId() {
		return RegionId;
	}
	public void setRegionId(Long RegionId) {
		this.RegionId = RegionId;
	}

	public String getDescription() {
		return Description;
	}
	public void setDescription(String Description) {
		this.Description = Description;
	}
	
	@Override
	public String toString() {
		return "Territory {" + "id = " + id + ", Description = " + Description + "}";
	}
}
