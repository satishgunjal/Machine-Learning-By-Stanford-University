## Octave / Matlab Tutorial:
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
   Now run above 'for loop' and note the result. Now run all the option commands and comapre the result with 'for loop' for correct    answer.
