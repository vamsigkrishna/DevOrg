trigger createOppFromContact on Contact (after update) {
	Test.applyDiscount();
}