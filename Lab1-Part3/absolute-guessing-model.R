#### Setting up the data ####

# This section of the code will create a data frame that descibes
# each trial in the experiment. The data frame will have two columns:
#
# stimulus - The ordinal value of the stimulus on the current trial
# last.stimulus - The ordinal value of the stimulus on the last trial
#
# The order of trials is generated in a way that avoids repeats of the
# same stimulus on neighboring trials.

# Parameters to control trial generation
n.trials <- 200 # How many trials for each stimulus?
n.stimuli <- 9 # How many different stimuli?

# Create a random order of trials, with no neighboring repeats.
trials <- sample(1:n.stimuli)
for(i in 2:n.trials){
  next.order <- sample(1:n.stimuli)
  while(next.order[1] == trials[length(trials)]){
    next.order <- sample(1:n.stimuli)
  }
  trials <- c(trials, next.order)
}

# Create the array that describes the value of the last trial
# Use NA for the first trial, to represent no previous information.
last.trial <- c(NA, trials[1:(length(trials)-1)])

# Create the data frame
trial.data <- data.frame(stimulus=trials, last.stimulus=last.trial)

#### Model of responses ####

# Your work starts here. Implement the model descibred in the readme
# file. You should add a new column to trial.data that indicates whether the 
# model guessed correctly (TRUE) or incorrectly (FALSE).



#### Plot the results ####

# Plot the curve with stimulus on the X axis and proportion of correct
# responses on the Y axis.




#### Short answer questions (reply using a comment below each number)

# 1. Why does the model's output change slightly each time you run it?

# 2. Try increasing and decreasing the number of trials per stimulus. How does 
#    this affect the stability of the model's predictions from run to run?
#    Explain why this happens.

# 3. Explain why the stimuli at the ends have a higher proportion correct than
#    those in the middle under this model.

# 4. Compare the model's accuracy to the data from Neath and Brown (2005). What
#    is the major difference? What does this suggest about the guessing model?


