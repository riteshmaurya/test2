package test;

import java.util.ArrayList;
import java.util.List;

public class Name {
	public Name(){
		name.add("AAA");
		name.add("BBB");
		name.add("CCC");
		name.add("DDD");
		name.add("EEE");	
	}

	private List<String> name=new ArrayList<String>();
	

	public List<String> getName() {
		return name;
	}

	public void setName(List<String> name) {
		
		
		this.name = name;
	}	
}