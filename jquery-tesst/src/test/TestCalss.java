package test;

public class TestCalss implements  TestInterface1, TestInterface{

	int p=20;
	
	public String pk(){
		System.out.println("method implemented");
		return null;
	}
	
	public static void main(String[] args) {
		TestInterface1 tc = new TestCalss();
	//	System.out.println(tc.p);
		System.out.println(tc); 
		
	}

	@Override
	public void pk() {
		// TODO Auto-generated method stub
		
	}


}
