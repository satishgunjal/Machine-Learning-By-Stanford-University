## Octave / Matlab Tutorial Graded Quiz:
### Question:1

    Suppose I first execute the following Octave/Matlab commands:
    A = [1 2; 3 4; 5 6];
    B = [1 2 3; 4 5 6];
    Which of the following are then valid commands? Check all that apply. (Hint: A' denotes the transpose of A.)


    C = A * B;
    C = B' + A;
    C = A' * B;
    C = B + A;
    
   Answer is 'C = A * B' and 'C = B' + A'. to test it create the A and B matrices in Octave and test all above commands to verify the results
   
### Question:2

    Let A=
        16 2  3  13
        5  11 10 8
        9  7  6  12
        4  14 15 1
    
    Which of the following indexing expressions gives 
    B=
        16 2
        5  11
        9  7
        4  14
    
    Check all that apply.

    Options:
    B = A(:, 0:2);
    B = A(:, 1:2);
    B = A(1:4, 1:2);
    B = A(0:4, 0:2);
    
   Answer is 'B = A(:, 1:2)' and 'B = A(1:4, 1:2)'. To test it create the matrix A as per above defination and test all the option          commands in Octave.
   
### Question:3

    Let A be a 10x10 matrix and x be a 10-element vector. Your friend wants to compute the product Ax and writes the following code:
    
    v = zeros(10, 1);
    for i = 1:10
      for j = 1:10
        v(i) = v(i) + A(i, j) * x(j);
      end
    end
    
    How would you vectorize this code to run without any for loops? Check all that apply
    
    Options:
    v = A * x;
    v = sum (A * x);
    v = A .* x;
    v = Ax;
    
   Answer is 'v = A * x'. To solve this create and 10x10 matrix (A) using magic command on Octave. Also create 10x1 column vector x.
   Now run above 'for loop' and note the result. Now run all the option commands and comapre the result with 'for loop' for correct        answer.
   
### Question:4

    Say you have two column vectors v and w, each with 7 elements (i.e., they have dimensions 7x1). Consider the following code:
    z = 0;
    for i = 1:7
      z = z + v(i) * w(i)
    end
    
    Which of the following vectorizations correctly compute z? Check all that apply.
    
    Options:
    z = v' * w;
    z = v * w;
    z = sum (v . * w);
    z = v .* w;
    
   Answer is 'z = v' * w' and 'z = sum (v . * w)'. To solve this create two column vextors of size 7x1 with sample elements.
   Now run above 'for loop' and note the result. Now run all the option commands and comapre the result with 'for loop' for correct        answer. 
   Note: In above 'for loop' result is stored in 'z' not 'z(i)' which means we get scalar value
   
### Question:5

    In Octave/Matlab, many functions work on single numbers, vectors, and matrices. For example, the sin function when applied to a         matrix will return a new matrix with the sin of each element. But you have to be careful, as certain functions have different           behavior. Suppose you have an 7x7 matrix X. You want to compute the log of every element, the square of every element, add 1 to         every element, and divide every element by 4. You will store the results in four matrices, A, B, C, D. One way to do so is the           following code:
    
    for i = 1:7
      for j = 1:7
        A(i, j) = log(X(i, j));
        B(i, j) = X(i, j) ^ 2;
        C(i, j) = X(i, j) + 1;
        D(i, j) = X(i, j) / 4;
      end
    end
    
    Which of the following correctly compute A, B, C,A,B,C, or DD? Check all that apply.
    
    Options:
    B = X .^ 2;
    C = X + 1;
    D = X / 4;
    B = X ^ 2;
    
   Answer is 'B = X .^ 2', 'C = X + 1' and 'D = X / 4'. To solve this create 7x7 matrix using magic command.
   Now run all the commands from option and check if result is mathcing with expected outcome.
