public class Allexamples {
    
    public static void datatypeexamples()
    {
        
        String Name='Anu';
        Integer age=100;
        Decimal Decnumber=100.30;
        Boolean inActive=True;
        Date todaydate = System.today();
        System.debug('Name is'+Name);
        System.debug('Age is '+age);
        System.debug('Decimal Number is '+Decnumber);
        System.debug('Date is' +todaydate);     
        
    }
    
    //This program is add to number by giving user input
    //Allexamples.cal(10,90);- to run
    public static void cal(Integer a, Integer b)
    {
        Integer result;
        result=a+b;
        System.debug('Sum of a & b is'+result);
    }
    
     //This program is add to number by giving user input and return the result
     //Integer result =Allexamples.calreturn(90,90);  System.debug(result);-to run
    public static Integer calreturn(Integer a, Integer b)
    {
        Integer result;
        result=a+b;
        System.debug('Sum of a & b is'+result);
        return result;
    }
    
  //Create a list to store numbers
    
    public static void listnumbers()
    {
       List<Integer> numberlist = new List<Integer>();
        Integer number1=10;
        Integer number2=50;
        Integer number3=80;
         numberlist.add(number1);
         numberlist.add(number2);
         numberlist.add(number3);
        system.debug('List of numbers are '+numberlist);
    }
    
    // Store numbers in a  list & use for loop to display
    // Allexamples.listnumbersloop();
    public static void listnumbersloop()
    {
       List<Integer> numberlist = new List<Integer>();
        Integer number1=10;
        Integer number2=50;
        Integer number3=80;
         numberlist.add(number1);
         numberlist.add(number2);
         numberlist.add(number3);
        for(Integer i:numberlist)
        {
            system.debug('List of numbers are using loop '+i);
        }
      //  system.debug('List of numbers are '+numberlist);
    }
    
    //store number in a list & return the list
    //List<Integer> numlist = Allexamples.listnumbersloopreturn();
    // System.debug('From return'+numlist);- to run
    public static  List<Integer> listnumbersloopreturn()
    {
       List<Integer> numberlist = new List<Integer>();
        Integer number1=10;
        Integer number2=50;
        Integer number3=80;
         numberlist.add(number1);
         numberlist.add(number2);
         numberlist.add(number3);
        for(Integer i:numberlist)
        {
            system.debug('List of numbers are using loop '+i);
        }
      //  system.debug('List of numbers are '+numberlist);
        
    return numberlist;
    }
    
    //sample program for If statement
    //Allexamples.sampleif();- to run

    public static void sampleif()
    {
      // String country1='New Zealand';
       String country1='Australia';
        
        
        If (country1=='New Zealand')
        {
            System.debug('City is Auckland');
        }
        
        else  If (country1=='Australia')
        {
            System.debug('City is Sydney');
        }
    }
    
    //sample program on if by giving input
    //Allexamples.sampleifinput('Australia');  - to run
    public static void sampleifinput(String country)
    {
      // String country1='New Zealand';
      // String country;
        
        
        If (country=='New Zealand')
        {
            System.debug('City is Auckland');
        }
        
        else  If (country=='Australia')
        {
            System.debug('City is Sydney');
        }
    }
    
  //To create a single account from Apex to database
  //Allexamples.createaccountfromapex();
  public static void createaccountfromapex()
  {
      Account newaccount = new Account();
      newaccount.Name='Bugata Family Account';
      newaccount.Rating='Hot';
      insert newaccount;
      System.debug(newaccount);
      
  }
    
    //create more than one accounts in salesforce from apex using a list
    //Allexamples.createaccountfromapexlist();
    public static void createaccountfromapexlist()
  {
      List<Account> acctlist = new List <Account>();
      Account newaccount1 = new Account();
      newaccount1.Name='Bugata Family Account1';
      newaccount1.Rating='Hot';
      acctlist.add(newaccount1);
      
       Account newaccount2 = new Account();
      newaccount2.Name='Bugata Family Account2';
      newaccount2.Rating='Hot';
      acctlist.add(newaccount2);
      
      insert acctlist;
      System.debug(acctlist);
         
      
  }
    
   //this program is to create more than one account using list and return the list 
   //List<Account> acctlistreturn = Allexamples.createaccountfromapexlistreturn();
   //System.debug(acctlistreturn);
    public static List<Account> createaccountfromapexlistreturn()
  {
      List<Account> acctlistreturn = new List <Account>();
      Account newaccount3 = new Account();
      newaccount3.Name='Bugata Family Account3';
      newaccount3.Rating='Hot';
      acctlistreturn.add(newaccount3);
      
       Account newaccount4 = new Account();
      newaccount4.Name='Bugata Family Account4';
      newaccount4.Rating='Hot';
      acctlistreturn.add(newaccount4);
      
      insert acctlistreturn;
    //  System.debug(acctlistreturn);
         
      return acctlistreturn;
        }
    
    // this program is to simply update one account by giving account id
    
    public static void updateaccount()
    {
         Account acctupd = new Account(id='0015i00000SY5muAAD');
        acctupd.phone='1111';
        update acctupd;
    }
    
    
     // Mass Update all accounts with site as Wellignton
    
    public static void massaccountupdate()
    {
        List <Account> acctupdlist = new List<Account>();
        List <Account> acctlist = [Select Id,site from Account];
          //  Account acc1 = new Account();
           for(Account acc1 : acctlist)
        {
          acc1.site='welligton';
          acctupdlist.add(acc1) ;
       // update acctupdlist;
    }
        update acctupdlist;
    
}
    
    //mass update all contact with department as BulkUpdate for a given account id
    public static void massupdatecontactsbasedonacctid(String accountId)
    {
        
         List <Contact> contactUpdList = new List<Contact>();
        List <Contact> conList = [SELECT Id, Department FROM Contact where accountId=:accountId];
          //  Account acc1 = new Account();
           for(Contact con1 : conList)
        {
          con1.Department='BulkUpdate';
          contactUpdList.add(con1) ;
       // update acctupdlist;
    }
        update contactUpdList;
        
    }
}