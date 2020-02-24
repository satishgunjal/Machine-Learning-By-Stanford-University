## Octave / Matlab Tutorial:
### Control Statements: for, while, if statements
1. for loop

    ```
    >> % for loop (space in below commands is only for indentation purpose)
    >> for i=1:10,
         v(i) = 2^i;
       end;
    >> v
    v =

          2      4      8     16     32     64    128    256    512   1024

    >> % we can also do this using below command
    >> indices=1:10;
    >> indices
    indices =

        1    2    3    4    5    6    7    8    9   10

    >> for i=indices,
         disp(i);
       end;
     1
     2
     3
     4
     5
     6
     7
     8
     9
     10
    >>
    ```
    
2. while loop

    ```
    >> v
    v =

          2      4      8     16     32     64    128    256    512   1024

    >> % notice to end statements in below while loop 
    >> i=1;
    >>  while true,
         v(i) = 999;
         i = i + 1;
         if i == 6,
           break;
         end;
        end;
    >> v
    v =

        999    999    999    999    999     64    128    256    512   1024

    >>
    ```
    
 3. if else

    ```
    >> % if else example
    >> v(1)
    ans =  999
    >> v(1) = 2;
    >> if v(1) == 1,
         disp('The value is one');
       elseif v(1) == 2,
         disp('the values is two');
       else
         disp('The values is not one or two');
       end;
       
       the values is two

    ```
