public class DateMethodsTraining {
    
    Public Void D()
    { 
    AddD();                   //Add Days to the current date
    AddM();                   //Add Months to current Month
    AddY();                   //Add Years to current Year
    AddDay();                 //it returns day of month
    AddDayofYear();           //it retunrs day of year
    NoofDaysinMonth();        //it returns no of days in month
    isLeap();                //checks wheather the year is leap or not
    Parse();                 //it will convert date to string
    
    }
    
    Void AddD()
    {
        Date d1 = date.newInstance(2021, 12, 25);
        Date d2 = d1.addDays(2);
        system.debug('After Adding the days is'+d2);
    }
    
     Void AddM()
    {
        Date d1 = date.newInstance(2020,05, 25);
        Date d2 = d1.addMonths(3);
        system.debug('After Adding the months is '+d2);
    }
    
    
     Void AddY()
    {
        Date d1 = date.newInstance(2021, 12, 25);
        Date d2 = d1.addYears(4);
        system.debug('After adding the years is'+d2);
    }
    
    
     Void AddDay()
    {
        Date d1 = date.newInstance(2021, 12, 25);
        
        
        system.debug('The day in the year is'+d1.day());
    }
    
    
     Void AddDayofYear()
    {
        Date d1 = date.newInstance(2021, 12, 25);
        Integer v1;
        v1 = d1.dayOfYear();
        system.debug(V1);
        
        system.debug('The no of days in year is'+d1.dayOfYear());
    }
    
    
     Void AddDaysBetween()
    {
        Date startdate = date.newInstance(2021, 12, 25);
        Date enddate = date.newInstance(2021, 12, 10);
        system.debug('The days b//w the start date and end date is'+startdate.daysBetween(enddate));
    }
    
    Void NoofDaysinMonth()
    {
       Integer n1 = date.daysInMonth(2020, 3);
        system.debug('The no of days in month'+n1);
    }
    
    Void isLeap()
    {
       Boolean isleap = date.isLeapYear(2003);
        system.debug('The year is Leap year'+isleap);
    }
    
    Void Parse()
    {
        Date d1 = date.parse('01/02/1993');
        system.debug(d1);
    }

}