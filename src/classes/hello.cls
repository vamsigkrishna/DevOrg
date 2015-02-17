public class hello {

    public String chk { 
    get { return 'true'; } 
    set; 
    }
    
    public Date dynamicDate {
     get { return System.Today().addMonths(5); }
    }
    
    public string testInnerClass(){
        TestOppService to = new TestOppService();
        to.outerInt = 2;
        to.icList = new List<TestOppService.innerClass>();
        TestOppService.innerClass ic = new TestOppService.innerClass();
        ic.testMe = 'test';
        to.icList.add(ic);
        return 'success';
    }
}