package domain;

public class EmployeeTerritory {
	private Long EmployeeId;
	private Long TerritoryId;
	
	public EmployeeTerritory(Long EmployeeId, Long TerritoryId) {
		this.EmployeeId = EmployeeId;
		this.TerritoryId = TerritoryId;
	}
	
	public void setEmployeeId(Long EmployeeId) {
		this.EmployeeId = EmployeeId;
	}
	
	public Long getEmployeeId() {
		return EmployeeId;
	}
	
	public void setTerritoryId(Long TerritoryId) {
		this.TerritoryId = TerritoryId;
	}
	public Long getTerritoryId() {
		return TerritoryId;
	}

	@Override
	public String toString() {
		return "EmployeeTerritory {" + "EmployeeId = " + EmployeeId + ", TerritoryId = " + TerritoryId + "}";
	}
	
}
