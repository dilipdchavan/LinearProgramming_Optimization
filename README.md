# LinearProgramming_Optimization


In "real life", linear programming is part of a very important area of mathematics called "optimization techniques". This field of study (or at least the applied results of it) are used every day in the organization and allocation of resources.
Linear programming is a mathematical method that is used to determine the best possible outcome or solution from a given set of parameters or list of requirements, which are represented in the form of linear relationships. It is most often used in computer modeling or simulation in order to find the best solution in allocating finite resources such as money, energy, manpower, machine resources, time, space and many other variables. In most cases, the "best outcome" needed from linear programming is maximum profit or lowest cost.”

An optimization model seeks to find the values of the decision variables that optimize (maximize or minimize) an objective function among the set of all values for the decision variables that satisfy the given constraints. 
### Common Terminology used in Linear Programming (Linear Optimization).
Decision Variables:  To solve any problem, we first need to identify the decision variables. 
Objective Functions: It is defined as the objective of making decisions.
Constraints: The constraints are the restrictions or limitations on the decision variables. They usually limit the value of the decision variables. 
Non-negativity restriction: For all linear programs, the decision variables should always take non-negative values. Which means the values for decision variables should be greater than or equal to 0.


### Example :
 A company wants to maximize the profit for two products A and B which are sold at $ 30 and $ 24 respectively. There are 2000 resource units available every day and product A requires 22 units while B requires 14 units. Both of these products require a production time of 5 minutes and total available working hours are 8 in a day. What should be the production quantity for each of the products to maximize profits?
We will follow the following steps :
1)	Objective Function :
Max(Sales) = max(30y1 + 24y2)

•	y1 is the units of Product A produced
•	y2 is the units of Product B produced
•	y1 and y2 are called the decision variables
•	30 and 24 are the selling price of the products

We are trying to maximize the sales while finding out the optimum number of products to manufacture. 
Now we set the constraints for this particular LP problem. We are dealing with both resource and time constraints.
22y1 + 14 y2 <= 2000 (Resource Constraint)
5y1 + 5y2 <= 8*60 (Time constraint)


•	Decision Variables: The decision variables are the variables which will decide my output. They represent my ultimate solution. To solve any problem, we first need to identify the decision variables. For the above example, the total number of units for A and B denoted by Y1 & Y2 respectively are my decision variables.
•	Objective Function: It is defined as the objective of making decisions. In the above example, the company wishes to increase the total profit represented by max(Sales). So, profit is my objective function.
•	Constraints: The constraints are the restrictions or limitations on the decision variables. They usually limit the value of the decision variables. In the above example, the limit on the availability of resources and time are my constraints.
•	Non-negativity restriction: For all linear programs, the decision variables should always take non-negative values. Which means the values for decision variables should be greater than or equal to 0.
There are 2 ways to solve the Linear optimization
Graphical Method & Simplex Method.
We will solve this problem by using Simplex Method in R [lpsolve].
The lpSolve R package allows to solve linear programming problems and get significant statistical information (i.e. sensitivity analysis).
The sensitivity analysis of linear programming (LP) has been widely studied. However, only some very simple and special cases were considered when right-hand side (RHS) parameters or objective function coefficients (OFC) correlate to each other. In the presence of correlation when one parameter changes, other parameters vary, too.
#Now we get the optimum values for y1 = 57 and y2 = 39
optimum$solution
### 57 39 
#The maximum sales figure is - 2646
optimum$objval
### 2646

Thanx!
