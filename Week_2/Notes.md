## Octave / Matlab Tutorial:
### Basic Operations
1. Elementary math operqations.

    ```
    >> % elementary math operations
    >> 3 + 5
    ans =  8
    >> 2 - 8
    ans = -6
    >> 2^3
    ans =  8
    >> 4/2
    ans =  2
    >>
    ```
2. Logical operations
    ```
    >> %some logical operation
    >> 1 == 2 % comparing two values
    ans = 0
    >> 1 ~= 2 % comparing two values with not equal to
    ans = 1
    >> 1 && 0 % AND
    ans = 0
    >> 1 || 0 % OR
    ans = 1
    >> xor(1,0)
    ans = 1
    >>
    ```
3. Octave variables
    ```
    >> % working with Octave variables
    >> a = 3 % assigning int values to a variables
    a =  3
    >> a = 3; % assign a values but not display it
    >> b = 'hey' % assigning string value to a variable
    b = hey
    >> c =(3>=1) % assigning boolen (true=1, false=0) value to a variable
    c = 1
    >> a = pi % value of pi
    a =  3.1416
    >> disp(a) % display value of variable
     3.1416
    >> disp(sprintf('2 decimls: %0.2f', a)) % display complex string
    2 decimls: 3.14
    >> disp(sprintf('4 decimls: %0.4f', a)) % display complex string
    4 decimls: 3.1416
    >> a
    a =  3.1416
    >> format long % display more number of decimal places
    >> a
    a =  3.141592653589793
    >> fomrat short % display less decimal places
    error: 'fomrat' undefined near line 1 column 1
    >> format short % display less decimal places
    >> a
    a =  3.1416

    ```
    
                 
