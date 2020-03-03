### Hypothesis Representation: Logistic regression
Q: Suppose we want to predict, from data xx about a tumor, whether it is malignant (y=1y=1) or benign (y=0y=0). Our logistic regression classifier outputs, for a specific tumor, hθ(x)=P(y=1|x;θ)=0.7, so we estimate that there is a 70% chance of this tumor being malignant. What should be our estimate for P(y=0|x;θ), the probability the tumor is benign?

A: hθ(x) will give us the probability that our output is 1. In above question example hθ(x) = 0.7, which gives us a probability of 70% that our output is 1. Our probability that our prediction is 0 is just the complement of our probability that it is 1. Hence if probability that it is 1 is 70%, then the probability that it is 0 is 30%. Right answer is :> P(y=0|x;θ)=0.3
