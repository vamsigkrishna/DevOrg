public class testVFController {

    public testVFController() {
        result = new List<String>();
        result.add('Valid');
        result.add('Invalid');
    }

    public string fileName {get; set;}
    public transient blob fileBody {get; set;}
    public integer fileSize {get;set;}

    public List<String> result {get; set;}
    
public PageReference checkSize(){
system.debug(fileSize);
/*
if(fileSize > 5242880)
{
ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'File is not Uploaded:Max.File Size is 5MB'));  
return null;      
}*/
return null;
}
    
    public List<String> stringTable {get; set; }
}