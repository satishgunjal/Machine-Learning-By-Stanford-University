## Octave / Matlab Tutorial:
### Computing On Data

  ```
  >> % matrix multiplication
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

  >> C = [1 1; 2 2]
  C =

     1   1
     2   2

  >> A * C % 3x2 matrix into 2x2 matrix will result in 3x2 matrix
  ans =

      5    5
     11   11
     17   17

  >> A.* B % elements wise multiplication between matrix A and B
  ans =

     11   24
     39   56
     75   96

  >> A. ^2 % elements wise squaring of matrix A
  parse error:

    syntax error

  >>> A. ^2 % elements wise squaring of matrix A
         ^

  >> A.^ 2 % elements wise squaring of matrix A
  ans =

      1    4
      9   16
     25   36

  >> % lets try elements wise reciprocal of matrix V
  >> V =[1; 2; 3]
  V =

     1
     2
     3

  >> 1./V % elements wise reciprocal of V
  ans =

     1.00000
     0.50000
     0.33333

  >> log(V) % element wise logarithm
  ans =

     0.00000
     0.69315
     1.09861

  >> exp(V) % element wise exponentian (base e)
  ans =

      2.7183
      7.3891
     20.0855

  >> V = [1; 2; 3]
  V =

     1
     2
     3

  >> abs(V) % element wise absolute values
  ans =

     1
     2
     3

  >> -V
  ans =

    -1
    -2
    -3

  >> -V
  ans =

    -1
    -2
    -3

  >> -(-V)
  ans =

     1
     2
     3

  >> V + ones(length(V),1) % increment each element of V by 1
  ans =

     2
     3
     4

  >> % another way doing this by adding 1
  >> V + 1
  ans =

     2
     3
     4

  >> % matrix transpose
  >> A
  A =

     1   2
     3   4
     5   6

  >> A' % A transpose
  ans =

     1   3   5
     2   4   6

  >> a = [1 15 2 0.5]
  a =

      1.00000   15.00000    2.00000    0.50000

  >> val = max(a) % returns max value from row vector
  val =  15
  >> [val, ind] = max(a)
  val =  15
  ind =  2
  >> max(A) % where A is matrix not vector then result will be max value from each column
  ans =

     5   6

  >> a
  a =

      1.00000   15.00000    2.00000    0.50000

  >> a < 3 % does element wise comparison and return true(1) or false(0) result
  ans =

    1  0  1  1

  >> find(a < 3) % gives less than 3 elements only
  ans =

     1   3   4

  >> % in above example it returns the index of less than 3 elements
  >> A = magic(3) % returns 3x3 matrix where sum of any row, column or diagonal is equal to same number
  A =

     8   1   6
     3   5   7
     4   9   2

  >> % sum and prod functions
  >> a
  a =

      1.00000   15.00000    2.00000    0.50000

  >> sum(a) % returns sum of all the elements
  ans =  18.500
  >> prod(1) % returns product of all the elements
  ans =  1
  >> prod(a) % returns product of all the elements
  ans =  15
  >> floor(a) % rounds down each element
  ans =

      1   15    2    0

  >> ceil(a) % rouns up each element
  ans =

      1   15    2    1

  >> % column and row wise maximum
  >> A
  A =

     8   1   6
     3   5   7
     4   9   2

  >> max(A,[],1) % returns column wise maximum
  ans =

     8   9   7

  >> max(A, [], 2) % returns row wise maximum
  ans =

     8
     7
     9

  >> max(A) % always returns column wise maximum
  ans =

     8   9   7

  >> max(max(A) % returns max elemnt from matrix

  >> max(max(A)) % returns max elemnt from matrix
  ans =  9
  >> max(A(:)) % return maximum element from matrix
  ans =  9
  >> A = magic(9) % returns 9x9 magic matrix
  A =

     47   58   69   80    1   12   23   34   45
     57   68   79    9   11   22   33   44   46
     67   78    8   10   21   32   43   54   56
     77    7   18   20   31   42   53   55   66
      6   17   19   30   41   52   63   65   76
     16   27   29   40   51   62   64   75    5
     26   28   39   50   61   72   74    4   15
     36   38   49   60   71   73    3   14   25
     37   48   59   70   81    2   13   24   35

  >> sum(A,1) % sums each coulumn (notic since its magic matrix sum is same)
  ans =

     369   369   369   369   369   369   369   369   369

  >> sum(A,2) % sums each row (notic since its magic matrix sum is same)
  ans =

     369
     369
     369
     369
     369
     369
     369
     369
     369

  >> % now to sum the diagonal elements
  >> % we will create 9x9 identity matrix
  >> % Multiple(element wise) A with identity matrix. WHich will give us only diagonal values of A
  >> % now do the sum of 'A.*eye(9)' which will give us sum of each coulumn i.e row vector of dialogonal element.
  >> % now do the some of row vector of dialogal element
  >> sum(sum(A.*eye(9)))
  ans =  369
  >> flipud(eye(9)) % flips the matrix upside down
  ans =

  Permutation Matrix

     0   0   0   0   0   0   0   0   1
     0   0   0   0   0   0   0   1   0
     0   0   0   0   0   0   1   0   0
     0   0   0   0   0   1   0   0   0
     0   0   0   0   1   0   0   0   0
     0   0   0   1   0   0   0   0   0
     0   0   1   0   0   0   0   0   0
     0   1   0   0   0   0   0   0   0
     1   0   0   0   0   0   0   0   0

  >> A
  A =

     47   58   69   80    1   12   23   34   45
     57   68   79    9   11   22   33   44   46
     67   78    8   10   21   32   43   54   56
     77    7   18   20   31   42   53   55   66
      6   17   19   30   41   52   63   65   76
     16   27   29   40   51   62   64   75    5
     26   28   39   50   61   72   74    4   15
     36   38   49   60   71   73    3   14   25
     37   48   59   70   81    2   13   24   35

  >> A =magic(3)
  A =

     8   1   6
     3   5   7
     4   9   2

  >> pinv(A) % returns inverse of matrix A
  ans =

     0.147222  -0.144444   0.063889
    -0.061111   0.022222   0.105556
    -0.019444   0.188889  -0.102778

  >> temp = pinv(A) % assign pinv to temp
  temp =

     0.147222  -0.144444   0.063889
    -0.061111   0.022222   0.105556
    -0.019444   0.188889  -0.102778

  >> temp * A % its like A'*A, returns identity matrix
  ans =

     1.0000e+00   2.0817e-16  -3.1641e-15
    -6.1062e-15   1.0000e+00   6.2450e-15
     3.0531e-15   4.1633e-17   1.0000e+00

  >>

  ```
