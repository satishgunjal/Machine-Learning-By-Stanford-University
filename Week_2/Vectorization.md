## Octave / Matlab Tutorial:
### Vectorization
- Vectorization pretty much means dont use 'for loop' to add up values inside a loop
- Vector mathematics automaticaaly computes the sum of the products. Thats how vector math is defined
- In tutorial quiz is as below

    ```
    Suppose you have three vector valued variables u, v, w: (these are column vectors)

    u= [u1; u2; u3]
    v= [v1; v2; v3]
    w= [w1; w2; w3]

    Your code implements the following:

    for j = 1:3,
      u(j) = 2 * v(j) + 5 * w(j);
    end

    How would you vectorize this code?

    Option1: u = 2 * v' * v * w + 5 * w' * w * v; (where v' denotes the transpose of v)
    Option1: u = 2 * v + 5 * w
    Option1: u = 5 * v + 2 * w
    Option1: u = 2 + v + 5 + w
    
    ```
    Correct answer is as below..
    ```
    Option1: u = 2 * v + 5 * w
    
    ```
    Explaination is as below..
    
    ```
    Lets define v and w vectors with some random values and run the for loop
    >> v=[4;5;6]
    v =

       4
       5
       6

    >> w=[7;8;9]
    w =

       7
       8
       9

    >> for j=1:3,
         u(j) = 2 * v(j) + 5 * w(j);
       end;
    >> u
    u =

       43
       50
       57
    Above result is from for loop now lets test the vector implementation from option 2.
    >> u = 2 * v + 5 * w
    u =

       43
       50
       57

    >>
    
    Since result vector is matching option 2 is correct option.
    
    ```
