@isTest
private class FirstTestFromMavens {
	
	@isTest static void test_method_one() {
		FirstClassFromMavensMate fc = new FirstClassFromMavensMate();
		Integer x = fc.ReturnTotal(2, 3);
		System.assertEquals(x,5);
	}
	
	@isTest static void test_method_two() {
		// Implement test code
	}
	
}