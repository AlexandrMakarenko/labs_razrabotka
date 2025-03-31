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
	
	@Override
	public String toString() {
		return "Territory {" + "id = " + id + ", Description = " + Description + "}";
	}
}
