# Week 3

## Cloassification and representaion

### Classification
<img src="images/Classification In Video Question.png" width="500">

### Hypothesis representation
Q: Suppose we want to predict, from data x about a tumor, whether it is malignant (y=1) or benign (y=0). Our logistic regression classifier outputs, for a specific tumor, hθ(x)=P(y=1|x;θ)=0.7, so we estimate that there is a 70% chance of this tumor being malignant. What should be our estimate for P(y=0|x;θ), the probability the tumor is benign?

A: 
- hθ(x) will give us the probability that our output is 1. In above question hθ(x) = 0.7, which means there is 70% chance that our output   is 1. 
- Since y must be eighter 0 or 1, so the probability of y = 0 plus the probability of y = 1 must add up to 1. So lets write this equation.
   P(y=0|x;θ) +  P(y=1|x;θ) = 1
  Based on above equation we can also say that "probability that our prediction is 0 is just the complement of our probability that it is   1"
- Hence if probability that it is 1 is 70%, then the probability that it is 0 is 30%. Right answer is :> P(y=0|x;θ)=0.3

### Decision boundary
<img src="images/Decision Boundary In Video Question.png" width="500">

## Logistic regression model

### Cost function
#### Question#1
<img src="images/Cost Function-Logistic regression model- In Video Question.png" width="500">

#### Question#2
<img src="images/Cost Function-Logistic regression model- In Video Question_1.png" width="700">

### Simplified Cost function and gradient discent
#### Question#1
<img src="images/Simplified Cost Function and Gradient Discent- In Video Question.png" width="500">

#### Question#2
<img src="images/Simplified Cost Function and Gradient Discent- In Video Question_1.png" width="500">

### Advanced optimization
<img src="images/Advanced Optimization- In Video Question.png" width="700">

## Multiclass Classification

# Multiclass classification: one vs all 
<img src="images/Multiclass Classification-one vs all- In Video Question.png" width="500">

## Logistic Regression : Graded Quiz
<img src="images/Logistic Regression- Graded Quiz.png" width="500">

## Solving the problem of overfitting

### The problem of overfitting-In video question
<img src="images/The problem of overfitting-In video question.PNG" width="500">

### Cost function-In video question
<img src="images/Cost function-In video question.png" width="500">
Please refer week 3 -> Solving the problem of over fitting -> cost function -> Video at 8 minute

### Regularized Linear Regression-In video question-In video question
<img src="images/Regularized Linear Regression-In video question.png" width="500">

### Regularized Logistic Regression-In video question
<img src="images/Regularized Logistic Regression-In video question.png" width="500">

## Regularization : Graded Quiz
<img src="images/Regularization- Graded-Quiz.png" width="500">


