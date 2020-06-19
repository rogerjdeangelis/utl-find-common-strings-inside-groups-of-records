# utl-find-common-strings-inside-groups-of-records
Find common strings inside groups of records 
    Find common strings inside groups of records                                                                     
                                                                                                                     
        Two Solutions                                                                                                
                                                                                                                     
             a. Two steps                                                                                            
                                                                                                                     
             b. Hash (one step)                                                                                      
                Paul Dorfman                                                                                         
                saslhole@gmail.com                                                                                   
                                                                                                                     
    StackOverflow                                                                                                    
    https://tinyurl.com/yb6jn8aj                                                                                     
    https://stackoverflow.com/questions/62447733/grouping-data-and-finding-common-string                             
                                                                                                                     
    *_                   _                                                                                           
    (_)_ __  _ __  _   _| |_                                                                                         
    | | '_ \| '_ \| | | | __|                                                                                        
    | | | | | |_) | |_| | |_                                                                                         
    |_|_| |_| .__/ \__,_|\__|                                                                                        
            |_|                                                                                                      
    ;                                                                                                                
                                                                                                                     
    filename ft15f001 "d:/txt/groups.txt";                                                                           
    parmcards4;                                                                                                      
    A 001 Alan                                                                                                       
    A 001 Alan Walker                                                                                                
    A 001 Walker Alan                                                                                                
    A 001 Alexander AlanJoseph                                                                                       
    B 002 Jay                                                                                                        
    B 002 Jay Zhou                                                                                                   
    B 002 JayJay                                                                                                     
    ;;;;                                                                                                             
    run;quit;                                                                                                        
                                                                                                                     
    FILE: d:/txt/groups.txt                                                                                          
                                                                                                                     
    A 001 Alan                                                                                                       
    A 001 Alan Walker                                                                                                
    A 001 Walker Alan                                                                                                
    A 001 Alexander AlanJoseph                                                                                       
    B 002 Jay                                                                                                        
    B 002 Jay Zhou                                                                                                   
    B 002 JayJay                                                                                                     
                                                                                                                     
    *            _               _                                                                                   
      ___  _   _| |_ _ __  _   _| |_                                                                                 
     / _ \| | | | __| '_ \| | | | __|                                                                                
    | (_) | |_| | |_| |_) | |_| | |_                                                                                 
     \___/ \__,_|\__| .__/ \__,_|\__|                                                                                
                    |_|                                                                                              
               _                       _                                                                             
      __ _    | |___      _____    ___| |_ ___ _ __                                                                  
     / _` |   | __\ \ /\ / / _ \  / __| __/ _ \ '_ \                                                                 
    | (_| |_  | |_ \ V  V / (_) | \__ \ ||  __/ |_) |                                                                
     \__,_(_)  \__| \_/\_/ \___/  |___/\__\___| .__/                                                                 
                                              |_|                                                                    
    ;                                                                                                                
                                                                                                                     
                                                                                                                     
    WORK.WANT total obs=3          |                                                                                 
                                   |                                                                                 
      A     B     VAL       COUNT  | RULES                                                                           
                                   |                                                                                 
      A    001    Alan        3    |  3 Akals                                                                        
                                       A 001 Alan                                                                    
                                       A 001 Alan Walker                                                             
                                       A 001 Walker Alan                                                             
      A    001    Walker      2    |                                                                                 
                                      2 Walkers                                                                      
      B    002    Jay         2    |                                                                                 
                                                                                                                     
    *_        _               _                                                                                      
    | |__    | |__   __ _ ___| |__                                                                                   
    | '_ \   | '_ \ / _` / __| '_ \                                                                                  
    | |_) |  | | | | (_| \__ \ | | |                                                                                 
    |_.__(_) |_| |_|\__,_|___/_| |_|                                                                                 
    ;                                                                                                                
                                                                                                                     
    WORK.WANT total obs=3                                                                                            
                                                                                                                     
    Obs    ID    KEY    NAME      COUNT                                                                              
                                                                                                                     
     1     A      1     Alan        3                                                                                
     2     A      1     Walker      2                                                                                
     3     B      2     Jay         2                                                                                
                                                                                                                     
    *          _       _   _                                                                                         
     ___  ___ | |_   _| |_(_) ___  _ __  ___                                                                         
    / __|/ _ \| | | | | __| |/ _ \| '_ \/ __|                                                                        
    \__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                        
    |___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                        
               _                       _                                                                             
      __ _    | |___      _____    ___| |_ ___ _ __                                                                  
     / _` |   | __\ \ /\ / / _ \  / __| __/ _ \ '_ \                                                                 
    | (_| |_  | |_ \ V  V / (_) | \__ \ ||  __/ |_) |                                                                
     \__,_(_)  \__| \_/\_/ \___/  |___/\__\___| .__/                                                                 
                                              |_|                                                                    
    ;                                                                                                                
                                                                                                                     
    data have;                                                                                                       
     infile "d:/txt/groups.txt";                                                                                     
     input A$ B$ c & $32.;                                                                                           
     do i=1 to countw(c);                                                                                            
       val=scan(c,i);                                                                                                
       output;                                                                                                       
       drop c i;                                                                                                     
     end;                                                                                                            
    run;quit;                                                                                                        
                                                                                                                     
                                                                                                                     
    proc freq data=have ;                                                                                            
    tables a*b*val / list out=want(where=(count>1) drop=percent);                                                    
    run;quit;                                                                                                        
                                                                                                                     
    *_        _               _                                                                                      
    | |__    | |__   __ _ ___| |__                                                                                   
    | '_ \   | '_ \ / _` / __| '_ \                                                                                  
    | |_) |  | | | | (_| \__ \ | | |                                                                                 
    |_.__(_) |_| |_|\__,_|___/_| |_|                                                                                 
                                                                                                                     
    ;                                                                                                                
                                                                                                                     
    With a degree of diligence, could be done in a single step, too - and also without sorting the input:            
                                                                                                                     
    data have ;                                                                                                      
      input id:$1. key names & $32.;                                                                                 
      cards ;                                                                                                        
    A 001 Walker Alan                                                                                                
    B 002 JayJay                                                                                                     
    A 001 Alexander AlanJoseph                                                                                       
    B 002 Jay                                                                                                        
    A 001 Alan Walker                                                                                                
    B 002 Jay Zhou                                                                                                   
    A 001 Alan                                                                                                       
    ;                                                                                                                
                                                                                                                     
    data want (where=(count>1) drop = names percent) ; * rld added the where clause * turn off for singles;          
      if _n_ = 1 then do ;                                                                                           
        dcl hash h (ordered:"a") ;                                                                                   
        h.definekey  ("id", "key", "name") ;                                                                         
        h.definedata ("id", "key", "name", "count") ;                                                                
        h.definedone () ;                                                                                            
        dcl hiter hi ("h") ;                                                                                         
      end ;                                                                                                          
      set have end = z ;                                                                                             
      do _n_ = 1 to countw (names) ;                                                                                 
        name = put (scan (names, _n_), $32.) ;                                                                       
        if h.find() ne 0 then count = 1 ;                                                                            
        else                  count + 1 ;                                                                            
        last.count + count ;                                                                                         
        h.replace() ;                                                                                                
      end ;                                                                                                          
      if z then do while (hi.next() = 0) ;                                                                           
        percent = divide (count, last.count) * 100 ;                                                                 
        output ;                                                                                                     
      end ;                                                                                                          
    run ;                                                                                                            
                                                                                                                     
    Best regards                                                                                                     
    Paul Dorfman                                                                                                     
                                                                                                                     
                                                                                                                     
