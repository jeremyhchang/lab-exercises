# Exercise 7: DPLYR practice with NBA data
# install.packages("dplyr")
library(dplyr)

# Read in the NBA team data of the 2016-2017 season from the data directory  
# into a variable called `team.data` using `read.csv`
team_data <- read.csv("data/teams.csv", stringsAsFactors = FALSE)

# The data.frame team.data should now be accessible to you. 
# View it, and get some basic information about the number of rows/columns. 
# Note the "X" preceding some of the column titles as well as the "*" 
# following the names of teams that made it to the playoffs that year.
View(team_data)
num_rows <- nrow(team_data)
num_col <- ncol(team_data)

# Add a column that gives the turnovers to steals ratio (TOV / STL) for each team
team_data <- mutate(team_data, TOV_STL_Ratio = TOV / STL)
View(team_data)

# Sort the teams from lowest turnover/steal ratio to highest
team_data <- arrange(team_data, TOV_STL_Ratio)
View(team_data)

# Get the team that had the highest Total Rebounds (TRB) only with the columns 
# Team and TRB  *using one line of code*
highest_TRB <- select(team_data, Team, TRB)

# Print only the name of the team that had the highest total rebounds
# (that also happens to be the greatest team of all time)
team_highest_TRB <- filter(highest_TRB, TRB == max(TRB)) %>% 
  select(Team)
print(team_highest_TRB)

## Let's change gears!

# Read in the Pokemon data from the data directory  
# into a variable called `pokemon` using `read.csv`. Remember to not read strings in as factors.
pokemon <- read.csv("data/Pokemon.csv", stringsAsFactors = FALSE)

# First, View() the data set to see what info you have to work with 
View(pokemon)

# Find all the Pokemon that are "Water" Type 1 (or your favorite)
# Save those rows into a variable called `water.pkm`
water_pkm <- filter(pokemon, Type.1 == "Water")

# Group the pokemon by Type 2 and save into a descriptive variable.
type_2_pkm <- group_by(pokemon, Type.2)

# View your new variable -- did it affect anything?
View(type_2_pkm)


# Use summarize() to figure out what the mean (average) speed is for 
# each different type in type 2 and what the maximum HP (health point) value is
# within each group.
avg_spd_type_2 <- summarize(type_2_pkm, mean = mean(Speed), max(HP))


# New pokemon are released in generations. Aggregate the data on generations
# using summarize() to look at the minimum and maximum attack and defense values
# across generations for Pokemon that are not "Legendary". 
generations <- summarize(pokemon, Generations,)
# Can you do it in one line?

