## Octave / Matlab Tutorial:
### Moving Data Around
1. Get matrix size, length & path change

    ```
    >> A
    A =

       1   2
       3   4
       5   6

    >> size(A) % size of matrix A
    ans =

       3   2

    >> size(A,1) % number of rows of matrix A
    ans =  3
    >> size(A,2) % number of columns of matrix A
    ans =  2
    >> V
    V =

       1   2   3   4   5   6

    >> length(V) % to get the size of longest dimension
    ans =  6
    >> pwd
    ans = C:\Users\satish.gunjal    
    >> cd 'C:\Users\satish.gunjal\OneDrive\Projects\Corsera_Machine_Learning\Week_2_Octave_Tutorial' % change directory
    >> ls
     Volume in drive C is Windows
     Volume Serial Number is 90EA-0925

     Directory of C:\Users\satish.gunjal\OneDrive\Projects\Corsera_Machine_Learning\Week_2_Octave_Tutorial

    [.]             [..]            featuresX.dat   priceY.dat
                   2 File(s)            747 bytes
                   2 Dir(s)  44,053,274,624 bytes free
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
4. Vector and matrices
    ```
    >> A = [1 2; 3 4; 5 6;] % 3x2 matrix
    A =

       1   2
       3   4
       5   6

    >> V = [1 2 3] % row vector
    V =

       1   2   3

    >> V = [1; 2; 3] % column vector
    V =

       1
       2
       3

    >> V = 1:0.1:2 % row vector with starting element 1 and increment step of 0.1 till last element 2
    V =

        1.0000    1.1000    1.2000    1.3000    1.4000    1.5000    1.6000    1.7000    1.8000    1.9000    2.0000

    >> V = 1:6 % row vector with first element 1 and last element 6
    V =

       1   2   3   4   5   6

    >> ones(2,3) % 2x3 matrix of all ones
    ans =

       1   1   1
       1   1   1

    >> W = zeros(1,3) % 1x3 matrix of all zeros
    W =

       0   0   0

    >> W = rand(3,3) % 3x3 matrix of random numbers
    W =

       0.869053   0.566336   0.724373
       0.221534   0.968437   0.939109
       0.098100   0.961282   0.378677

    >> I = eye(4) % 4x4 identity matrix
    I =

    Diagonal Matrix

       1   0   0   0
       0   1   0   0
       0   0   1   0
       0   0   0   1

    >> help eye % help function to know about Octave commands
    'eye' is a built-in function from the file libinterp/corefcn/data.cc

     -- eye (N)
     -- eye (M, N)
     -- eye ([M N])
     -- eye (..., CLASS)
         Return an identity matrix.

         If invoked with a single scalar argument N, return a square NxN
         identity matrix.

         If supplied two scalar arguments (M, N), 'eye' takes them to be the
         number of rows and columns.  If given a vector with two elements,
         'eye' uses the values of the elements as the number of rows and
         columns, respectively.  For example:

              eye (3)
               =>  1  0  0
                   0  1  0
                   0  0  1

         The following expressions all produce the same result:

              eye (2)
              ==
              eye (2, 2)
              ==
              eye (size ([1, 2; 3, 4]))

         The optional argument CLASS, allows 'eye' to return an array of the
         specified type, like

              val = zeros (n,m, "uint8")

         Calling 'eye' with no arguments is equivalent to calling it with an
         argument of 1.  Any negative dimensions are treated as zero.  These
         odd definitions are for compatibility with MATLAB.

         See also: speye, ones, zeros.

    Additional help for built-in functions and operators is
    available in the online version of the manual.  Use the command
    'doc <topic>' to search the manual index.

    Help and information about Octave is also available on the WWW
    at https://www.octave.org and via the help@octave.org
    mailing list.
    >>
    ```
                 
