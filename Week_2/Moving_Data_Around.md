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
2. Load and save data
    ```
    >> pwd
    ans = C:\Users\satish.gunjal\OneDrive\Projects\Corsera_Machine_Learning\Week_2_Octave_Tutorial
    >> load featuresX.dat % to load data from file
    >> load(priceY.dat) % to load data from file (different syntax)
    error: 'priceY' undefined near line 1 column 6
    >> load('priceY.dat') % to load data from file (different syntax)
    >> who % shows available variables in Octave workplace
    Variables in the current scope:

    A          I          V          W          a          ans        b          c          featuresX  priceY

    >> % to display the content of any varialbe just type its name e.g. featuesX will show values in it
    >> featuesX
    error: 'featuesX' undefined near line 2 column 1
    >> featuresX
    featuresX =

       2104      3
       1600      3
       2400      3
       1416      2
       3000      4
       1985      4
       1534      3
       1427      3
       1380      3
       1494      3
       1940      4
       2000      3
       1890      3
       4478      5
       1268      3
       2300      4
       1320      2
       1236      3
       2609      4
       3031      4
       1767      3
       1888      2
       1604      3
       1962      4
       3890      3
       1100      3
       1458      3
       2526      3
       2200      3
       2637      3
       1839      2
       1000      1
       2040      4
       3137      3
       1811      4
       1437      3
       1239      3
       2132      4
       4215      4
       2162      4
       1664      2
       2238      3
       2567      4
       1200      3
        852      2
       1852      4
       1203      3

    >> size(featuresX) % give size of matrix
    ans =

       47    2

    >> size(priceY) % size of matrix. here its column vector
    ans =

       47    1

    >> whos % detailed view of variables
    Variables in the current scope:

       Attr Name           Size                     Bytes  Class
       ==== ====           ====                     =====  =====
            A              3x2                         48  double
            I              4x4                         32  double
            V              1x6                         24  double
            W              3x3                         72  double
            a              1x1                          8  double
            ans            1x2                         16  double
            b              1x3                          3  char
            c              1x1                          1  logical
            featuresX     47x2                        752  double
            priceY        47x1                        376  double

    Total is 185 elements using 1332 bytes

    >> clear featuresX % to get rid of variable
    >> whos % now featuresX is gone
    Variables in the current scope:

       Attr Name        Size                     Bytes  Class
       ==== ====        ====                     =====  =====
            A           3x2                         48  double
            I           4x4                         32  double
            V           1x6                         24  double
            W           3x3                         72  double
            a           1x1                          8  double
            ans         1x2                         16  double
            b           1x3                          3  char
            c           1x1                          1  logical
            priceY     47x1                        376  double

    Total is 91 elements using 580 bytes

    >> V= priceY(1:10) % assign first 10 elements to vector V
    V =

       399900
       329900
       369000
       232000
       539900
       299900
       314900
       198999
       212000
       242500

    >> save hello.dat V % save variable V in hello.dat file
    >> ls
     Volume in drive C is Windows
     Volume Serial Number is 90EA-0925

     Directory of C:\Users\satish.gunjal\OneDrive\Projects\Corsera_Machine_Learning\Week_2_Octave_Tutorial

    [.]             [..]            featuresX.dat   hello.dat       priceY.dat
                   3 File(s)            972 bytes
                   2 Dir(s)  44,029,325,312 bytes free
    >> clear % clears all the variables from workspace
    >> whos % since variables are cleared nothing to show
    >> load hello.data % load the data from file
    error: load: unable to find file hello.data
    >> load hello.dat % load the data from file
    >> whos
    Variables in the current scope:

       Attr Name        Size                     Bytes  Class
       ==== ====        ====                     =====  =====
            V          10x1                         80  double

    Total is 10 elements using 80 bytes

    >> save hello.txt v -ascii % save as text in ASCII format
    warning: save: no such variable 'v'
    >> save hello.txt V -ascii % save as text in ASCII format
    >> save hello.mat V % save in binary format
    >>

    ```
3. Data manipulation
    ```
    >> A= [1 2; 3 4; 5 6]
    A =

       1   2
       3   4
       5   6

    >> A(3,2) % indexing, get element at row 6 and column 2
    ans =  6
    >> A(2,:) % ':' means every element along that row/column
    ans =

       3   4

    >> A(:,2) % get everything from second column of A
    ans =

       2
       4
       6

    >> A([1 3],:) % get all the elements from 1 and 3 row of A
    ans =

       1   2
       5   6

    >> A
    A =

       1   2
       3   4
       5   6

    >> A(:,2) = [10; 11; 12] % assigning new column vector to second column of A
    A =

        1   10
        3   11
        5   12

    >> A= [A, [100; 101; 102]] % append another column vector to the right
    A =

         1    10   100
         3    11   101
         5    12   102

    >> A(:) % put all the elements of A in a single vector
    ans =

         1
         3
         5
        10
        11
        12
       100
       101
       102

    >> % concanating two matrices
    >> A= [1 2; 3 4; 5 6]
    A =

       1   2
       3   4
       5   6

    >> B =[11 12; 13 14; 15 16]
    B =

       11   12
       13   14
       15   16

    >> C = [A B] % B will be concatnated to the right of matrix A
    C =

        1    2   11   12
        3    4   13   14
        5    6   15   16

    >> C =[A; B] % B will be concatenated to the bottom of matrix A
    C =

        1    2
        3    4
        5    6
       11   12
       13   14
       15   16

    >>
    ```
