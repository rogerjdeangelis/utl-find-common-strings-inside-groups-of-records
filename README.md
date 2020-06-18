# utl-find-common-strings-inside-groups-of-records
Find common strings inside groups of records 
    StackOverflow: Find common strings inside groups of records                                          
                                                                                                         
    github                                                                                               
    https://tinyurl.com/yc62ppvr                                                                         
    https://github.com/rogerjdeangelis/utl-find-common-strings-inside-groups-of-records                  
                                                                                                         
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
    ;                                                                                                    
                                                                                                         
    WORK.WANT total obs=3                     |                                                          
                                              |                                                          
      A     B     VAL       COUNT    PERCENT  | RULES                                                    
                                              |                                                          
      A    001    Alan        3      27.2727  |  3 Akals                                                 
                                                  A 001 Alan                                             
                                                  A 001 Alan Walker                                      
                                                  A 001 Walker Alan                                      
      A    001    Walker      2      18.1818  |                                                          
                                                 2 Walkers                                               
      B    002    Jay         2      18.1818  |                                                          
    *                                                                                                    
     _ __  _ __ ___   ___ ___  ___ ___                                                                   
    | '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                  
    | |_) | | | (_) | (_|  __/\__ \__ \                                                                  
    | .__/|_|  \___/ \___\___||___/___/                                                                  
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
    tables a*b*val / list out=want(where=(count>1));                                                     
    run;quit;                                                                                            
                                                                                                         
                                                                                                         
