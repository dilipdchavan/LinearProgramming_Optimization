rm(list=ls(all=TRUE))
setwd("C:\\DCHAVAN\\DSTI-Masters\\DilipPersonalStudy\\LinearProgramming_Optimization")

library(lpSolve)

# Set coefficients of the objective function
objective.in  <- c(30, 24)

# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
const <- matrix(c(22,  14,
                   5, 5), nrow=2, byrow=TRUE)

resource_constraints <- 1800
time_constraints <- (8*60)

# Set right hand side coefficients
rhs <- c(resource_constraints, time_constraints)

# Direction of the constraints
direction  <- c("<=", "<=")

#The final step is to find the optimal solution. The syntax for the lpsolve package is -
#lp(direction , objective, const.mat, const.dir, const.rhs)

optimum <-  lp(direction="max",  objective.in, const, direction,  rhs)
optimum

summary(optimum)

# Sensitivities
lp("max", objective.in, const, direction, rhs, compute.sens=TRUE)$sens.coef.from
#24.00000 19.09091
 
lp("max", objective.in, const, direction, rhs,compute.sens=TRUE)$sens.coef.to
#37.71429 30.00000

#Now we get the optimum values for y1 and y2, i.e the number of product A and product B that should be manufactured.
optimum$solution
# 57 39

#The maximum sales figure is -
optimum$objval
# 2646