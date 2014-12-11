public class slist {

    public list<string> Students { get; set; }
  
    public slist(){
              Students = new list<string>();
              Students.add('amit');
              Students.add('Varun');
    }
}