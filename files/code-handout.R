#' ## Introduction to R and RStudio
#' 
#' 
#' ## Data visualization with ggplot2
#' 
#' ## Challenge 1: Modifying plots
#' 
#' 1. Try modifying the plot so that the `shape` of the point varies by `sex`. You will set the `shape` the same way you set the `color`.
#' 
#' Do you think this is a good way to represent `sex` with these data?
#' 
#' ## Challenge 2: Change `geom`s
#' 
#' Violin plots are similar to boxplots- try making one using `plot_type` and `hindfoot_length` as the x and y variables. Remember that all geom functions start with `geom_`, followed by the type of geom.
#' 
#' This might also be a place to test your search engine skills. It is often useful to search for `R package_name stuff you want to search`. So for this example we might search for `R ggplot2 violin plot`.
#' 
#' ## Challenge 3: Customizing a plot
#' 
#' Modify the previous plot by adding a descriptive subtitle. Increase the font size of the plot title and make it bold.
#' 
#' ## Challenge 4: Make your own plot
#' 
#' Try making your own plot! You can run `str(complete_old)` or `?complete_old` to explore variables you might use in your new plot. Feel free to use variables we have already seen, or some we haven't explored yet.
#' 
#' Here are a couple ideas to get you started:
#' 
#' - make a histogram of one of the numeric variables
#' - try using a different color `scale_`
#' - try changing the size of points or thickness of lines in a `geom`
#' 
#' ## Exploring and understanding data
#' 
#' ## Challenge 1: Coercion
#' 
#' Since vectors can only hold one type of data, something has to be done when we try to combine different types of data into one vector.
#' 
#' 1. What type will each of these vectors be? Try to guess without running any code at first, then run the code and use `class()` to verify your answers.
#' 
## ----coercion-challenge-------------------------------------------------------
num_logi <- c(1, 4, 6, TRUE)
num_char <- c(1, 3, "10", 6)
char_logi <- c("a", "b", TRUE)


tricky <- c("a", "b", "1", FALSE)

#' 
#' 2. How many values in `combined_logical` are `"TRUE"` (as a character)?
#' 
## ----combined-logical-challenge-----------------------------------------------
combined_logical <- c(num_logi, char_logi)

#' 
#' 3. Now that you've seen a few examples of coercion, you might have started to see that there are some rules about how types get converted. There is a hierarchy to coercion. Can you draw a diagram that represents the hierarchy of what types get converted to other types?
#' 
#' ## Challenge 2: Creating sequences
#' 
#' 1. Write some code to generate the following vector:
#' 
## ----seq-chalenge, echo=FALSE-------------------------------------------------
rep(-3:3, 3)

#' 
#' ## Challenge 3: Assignments and objects
#' 
#' What is the value of `y` after running the following code?
#' 
#' ## Working with data
#' 
#' ## Challenge 1: Filtering and selecting
#' 
#' 1. Use the surveys data to make a data.frame that has only data with years from 1980 to 1985.
#' 
#' 2. Use the surveys data to make a data.frame that has only the following columns, in order: `year`, `month`, `species_id`, `plot_id`.
#' 
#' ## Challenge 2: Using pipes
#' 
#' ## Challenge 3: Plotting date
#' 
#' Because the `ggplot()` function takes the data as its first argument, you can actually pipe data straight into `ggplot()`. Try building a pipeline that creates the date column and plots weight across date.
#' 
#' ## Challenge 4: Making a time series
#' 
#' 1. Use the split-apply-combine approach to make a `data.frame` that counts the total number of animals of each sex caught on each day in the `surveys` data.
#' 
#' 2. Now use the data.frame you just made to plot the daily number of animals of each sex caught over time. It's up to you what `geom` to use, but a `line` plot might be a good choice. You should also think about how to differentiate which data corresponds to which sex.
#' 
