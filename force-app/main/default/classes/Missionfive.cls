public class Missionfive {
    
    public static void missionmethod()
    {
        List<Integer> input = new List<Integer>();
        Integer num1 = 12;
        Integer num2 = 20;
        Integer num3 = 30;
        Integer num4 = 17;
        input.add(num1);
        input.add(num2);
        input.add(num3);
        input.add(num4);
        
        
        
        for(Integer i:input)
        {
            
            if(math.mod(i,3)==0 && math.mod(i,5)==0)
               {system.debug('Input number is '+i+'  DingDong');}
            
            else if (math.mod(i,3)==0)
            { system.debug('Input number is '+i+' Ding');}
            
            else if (math.mod(i,5)==0)
            {system.debug('Input number is '+i+' Dong');}
            
            else if(math.mod(i,3)<>0 || math.mod(i,5)<>0)
               {system.debug('Input number is '+i+' 17');}
         
          
        }
        
    }    
        
    

}