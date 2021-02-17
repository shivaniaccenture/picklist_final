public class picklistclass {
    public String state1 {get;set;}
    public String district {get;set;}

    public List<SelectOption> getstates()
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- Select ---'));        
        options.add(new SelectOption('UP','Uttar Pradesh'));
        options.add(new SelectOption('MP','Madhya Pradesh'));
        options.add(new SelectOption('MH','Maharashtra'));
         options.add(new SelectOption('GJ','Gujrat'));
        return options;
    } 
    
    public List<SelectOption> getdistricts()
    {
        List<String> options = new List<String>{'Agra','Firozabad','Mainpuri',
            									'Mathura','Aligarh','Etah','Hathras','Kasganj','Allahabad','Fatehpur',
            									'Kaushambi','Pratapgarh','Azamgarh','Ballia','Mau'};
        List<String> op2 = new List<String>{'Bhopal','Raisen','Rajgad','Sehore','Vidisha','Morena','Sheopur','Bhind',
            								'Gwalior','AshokNagar','Shivpuri','Datia','Guna','Alirajpur','Indore'};
        List<String> op3 = new List<String>{'Akola','Amravati','Buldana','Yavatmal','Washim','Aurangabad','Ahmednagar','Beed',
            								'Jalna','Latur','Shivpuri','Hingoli','Parbhani','Mumbai','Thane'};  
        List<String> op4 = new List<String>{'Ahmadabad','Surat','Vadodara','Rajkot','Banaskantha','Bhavnagar'
            								,'Junagadh','Sabarkantha','PanchMahal','Kheda','Jamnagar','Dohad','Anand','Kachchh'
            								,'Bharuch'};                                      
        List<SelectOption> listt=new List<SelectOption>();
            
        if(state1 == 'UP')
        {       
            for(String str : options){
                 listt.add(new SelectOption(' ',str));
            }
        }
        else if(state1 == 'MP')
        {       
            for(String str : op2){
                 listt.add(new SelectOption(' ',str));
            }
        }
        
        else if(state1 == 'MH')
        {       
            for(String str : op3){
                 listt.add(new SelectOption(' ',str));
            }
        }
        else if(state1 == 'GJ')
        {       
            for(String str : op4){
                 listt.add(new SelectOption(' ',str));
            }
        }
        
        else
        {
            listt.add(new SelectOption('None','--- Select ---'));
        }      
        return listt;
    }       
}