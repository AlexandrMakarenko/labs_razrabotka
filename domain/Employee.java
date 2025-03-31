package domain;

public class Employee {
	private Long id;
	private String LastName;
	private String FirstName;
	private String SecondName;
	private String Title;
	private Date BirthDay;
	private String Address;
	private String City;
	private String Region;
	private String Phone;
	private String Email;
	
	public Employee() {
		
	}
	public Employee(Long id, String LastName, String FirstName, String SecondName, String Title, Date BirthDay, String Address, String City, String Region, String Phone, String Email) {
		this.id = id;
		this.LastName = LastName;
		this.FirstName = FirstName;
		this.SecondName = SecondName;
		this.Title = Title;
		this.BirthDay = BirthDay;
		this.Address = Address;
		this.City = City;
		this.Region = Region;
		this.Phone = Phone;
		this.Email = Email;
	}	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLastName() {
		return this.LastName;
	}
	public void setLastName(String LastName) {
		this.LastName = LastName;
	}

	public String getFirstName() {
		return this.FirstName;
	}
	public void setFirstName(String FirstName) {
		this.FirstName = FirstName;
	}

	public String getSecondName() {
		return this.SecondName;
	}
	public void setSecondName(String SecondName) {
		this.SecondName = SecondName;
	}
	public String getTitle() {
		return this.Title;
	}
	public void setTitle(String Title) {
		this.Title = Title;
	}
	public Date getBirthDay() {
		return this.BirthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.BirthDay = birthDay;
	}

	public String getAddress() {
		return this.Address;
	}

	public void setAddress(String address) {
		this.Address = address;
	}

	public String getCity() {
		return this.City;
	}

	public void setCity(String city) {
		this.City = city;
	}

	public String getRegion() {
		return this.Region;
	}

	public void setRegion(String region) {
		this.Region = region;
	}

	public String getPhone() {
		return this.Phone;
	}

	public void setPhone(String phone) {
		this.Phone = phone;
	}

	public String getEmail() {
		return this.Email;
	}

	public void setEmail(String email) {
		this.Email = email;
	}
	
	@Override
	public String toString() {
		return "Employee {" + "Id = " + id
				+ ", LastName = " + LastName
				+ ", FirstName = " + FirstName
				+ ", SecondName = " + SecondName
				+ ", Title = " + Title
				+ ", BirthDay = " + BirthDay
				+ ", Address = " + Address
				+ ", City = " + City
				+ ", Region = " + Region
				+ ", Phone = " + Phone
				+ ", Email = " + Email
				+ "}";
	}
}
