StackOverflow: Find common strings inside groups of records                                                                          
                                                                                                                                     
 Two Solutions                                                                                                                       
                                                                                                                                     
     a. Two step solution                                                                                                            
                                                                                                                                     
     b. Hash (one step)                                                                                                              
        Paul Dorfman                                                                                                                 
        saslhole@gmail.com                                                                                                           
                                                                                                                                     
     c. Find common substrings ( slightly different but powerfull string processing)                                                 
        Elegant HASH solution to identify substrings that occur                                                                      
        all recors by grour (A x B)                                                                                                  
                                                                                                                                     
        The input is a little different to better test the hash algorithm.                                                           
                                                                                                                                     
        Richard DeVenezia                                                                                                            
        rdevenezia@gmail.com                                                                                                         
                                                                                                                                     
        "Here is a bit more extensive version that finds all substrings                                                              
         common to all items in the group.  The concept is                                                                           
        - find all common substrings between first two items                                                                         
        - remove any prior common substring that is not present                                                                      
          in current item (3 ... # items in group)"                                                                                  
                                                                                                                                     
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
                                                                                                                                     
*                                                _        _                                                                          
  ___ ___  _ __ ___  _ __ ___   ___  _ __    ___| |_ _ __(_)_ __   __ _ ___                                                          
 / __/ _ \| '_ ` _ \| '_ ` _ \ / _ \| '_ \  / __| __| '__| | '_ \ / _` / __|                                                         
| (_| (_) | | | | | | | | | | | (_) | | | | \__ \ |_| |  | | | | | (_| \__ \                                                         
 \___\___/|_| |_| |_|_| |_| |_|\___/|_| |_| |___/\__|_|  |_|_| |_|\__, |___/                                                         
                                                                  |___/                                                              
;                                                                                                                                    
                                                                                                                                     
WORK.WANT total obs=10 |  RULES                                                                                                      
                       |                                                                                                             
  A     B     SS       |                                           A   B                                                             
                       |                                                                                                             
  A    001             |  space occurs in all group a substrings   A  001  Alan J                                                    
  A    001    N     *  |  occurs in all group a substrings         A  001  Alan Walker                                               
  A    001    A     *  |  occurs in all group a substrings         A  001  Walker Alan                                               
  A    001    L     *  |  occurs in all group a substrings         A  001  Alexander AlanJoseph                                      
  A    001    AN    *  |  occurs in all group a substrings         A  001  The family Lannister                                      
  A    001    LA    *  |  occurs in all group a substrings                                                                           
  A    001    LAN   *  |  occurs in all group a substrings                                                                           
                       |                                                                                                             
  B    001    D     *  |  occurs in all group a substrings                                                                           
  B    001    R     *  |  occurs in all group a substrings                                                                           
  B    001    DR    *  |  occurs in all group a substrings                                                                           
                                                                                                                                     
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
                                                                                                                                     
*                                                          _        _                                                                
  ___      ___ ___  _ __ ___  _ __ ___   ___  _ __     ___| |_ _ __(_)_ __   __ _ ___                                                
 / __|    / __/ _ \| '_ ` _ \| '_ ` _ \ / _ \| '_ \   / __| __| '__| | '_ \ / _` / __|                                               
| (__ _  | (_| (_) | | | | | | | | | | | (_) | | | |  \__ \ |_| |  | | | | | (_| \__ \                                               
 \___(_)  \___\___/|_| |_| |_|_| |_| |_|\___/|_| |_|  |___/\__|_|  |_|_| |_|\__, |___/                                               
                                                                                                                                     
;                                                                                                                                    
                                                                                                                                     
data have;                                                                                                                           
infile datalines dlm='|';                                                                                                            
length A B $10 C $20;                                                                                                                
input A B C;                                                                                                                         
datalines;                                                                                                                           
A      | 001     | Alan J                                                                                                            
A      | 001     | Alan Walker                                                                                                       
A      | 001     | Walker Alan                                                                                                       
A      | 001     | Alexander AlanJoseph                                                                                              
A      | 001     | The family Lannister                                                                                              
B      | 001     | Avagadro                                                                                                          
B      | 001     | Drone recon                                                                                                       
B      | 001     | Dryads                                                                                                            
C      | 001     | AB                                                                                                                
C      | 001     | BC                                                                                                                
C      | 001     | CA                                                                                                                
D      | 002     | xyzzy                                                                                                             
;                                                                                                                                    
run;quit;                                                                                                                            
                                                                                                                                     
data want;                                                                                                                           
                                                                                                                                     
  if 0 then set have;                                                                                                                
                                                                                                                                     
  if _n_ =  1 then do;                                                                                                               
                                                                                                                                     
      ss = C; _s0 = C; _s1 = C; * inherit C length;                                                                                  
                                                                                                                                     
      declare hash S;                                                                                                                
      declare hiter EACH;                                                                                                            
      declare hash L();                                                                                                              
      L.defineKey('_n_');                                                                                                            
      L.defineData('S', 'EACH');                                                                                                     
      L.defineDone();                                                                                                                
                                                                                                                                     
      do _n_ = 1 to lengthc(C);                                                                                                      
        S = _new_ hash();                                                                                                            
        S.defineKey('SS');                                                                                                           
        S.defineDone();                                                                                                              
                                                                                                                                     
        EACH = _new_ hiter('S');                                                                                                     
                                                                                                                                     
        L.add();                                                                                                                     
      end;                                                                                                                           
                                                                                                                                     
      declare hash R();                                                                                                              
      R.defineKey('SS');                                                                                                             
      R.defineDone();                                                                                                                
                                                                                                                                     
    declare hiter RITER('R');                                                                                                        
  end;                                                                                                                               
                                                                                                                                     
  do _n_ = 1 to lengthc(C);                                                                                                          
    L.find();                                                                                                                        
    S.clear();                                                                                                                       
  end;                                                                                                                               
                                                                                                                                     
  _longest = 0;                                                                                                                      
                                                                                                                                     
                                                                                                                                     
  do _ix = 1 by 1 until (last.b);                                                                                                    
    set have;                                                                                                                        
    by A B;                                                                                                                          
                                                                                                                                     
    _s0 = _s1;                                                                                                                       
    _s1 = upcase(C);                                                                                                                 
                                                                                                                                     
    if _ix > 2 then do;                                                                                                              
      * iterate over all current common strings of each length;                                                                      
      do _n_ = 1 to _longest;                                                                                                        
        L.find();                                                                                                                    
                                                                                                                                     
        if R.num_items then R.clear();                                                                                               
                                                                                                                                     
        do while (EACH.next() = 0);                                                                                                  
          if index(_s1, substr(ss,1,_n_)) then                                                                                       
            _longest = _n_;                                                                                                          
          else                                                                                                                       
            R.add(); /* track substring to be untracked */                                                                           
        end;                                                                                                                         
                                                                                                                                     
        do while(RITER.next() = 0);                                                                                                  
          S.remove(); /* untrack (remove from common list) a substring */                                                            
        end;                                                                                                                         
      end;                                                                                                                           
                                                                                                                                     
      continue;                                                                                                                      
    end;                                                                                                                             
                                                                                                                                     
    if _ix = 1 then                                                                                                                  
      continue;                                                                                                                      
                                                                                                                                     
    if _ix = 2 then do;                                                                                                              
      * determine initial common substrings;                                                                                         
      * all subsequent strings must have substrings that match prior matches;                                                        
                                                                                                                                     
      do _n_ = 1 to length(_s0);                                                                                                     
        L.find();                                                                                                                    
        do _m_ = 1 to length(_s0)-_n_+1;                                                                                             
          if index(_s1, substr(_s0,_m_,_n_)) then do;                                                                                
            ss = substr(_s0,_m_,_n_);                                                                                                
            _rc = S.add();                                                                                                           
            if _rc = 0 then do;                                                                                                      
              _longest = _n_;                                                                                                        
            end;                                                                                                                     
          end;                                                                                                                       
        end;                                                                                                                         
      end;                                                                                                                           
      continue;                                                                                                                      
    end;                                                                                                                             
  end;                                                                                                                               
                                                                                                                                     
  do _n_ = 1 to _longest;                                                                                                            
    L.find();                                                                                                                        
    do while (EACH.next() = 0);                                                                                                      
      output;                                                                                                                        
    end;                                                                                                                             
  end;                                                                                                                               
                                                                                                                                     
  keep A B ss;                                                                                                                       
                                                                                                                                     
  drop _:;                                                                                                                           
run;                                                                                                                                 
                                                                                                                                     
Happy hashing,                                                                                                                       
Richard DeVenezia                                                                                                                    
                                                                                                                                     
                                                                                                                                     
