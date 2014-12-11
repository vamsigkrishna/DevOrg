public class aptest12 implements Schedulable {

    public void execute(SchedulableContext ctx) {
   
    account acc = new account();
    acc.name = 'John seteesh';
    acc.billingCity = 'Hyderabad';
    acc.phone = '9886098860';
    insert acc;
   
    }
}