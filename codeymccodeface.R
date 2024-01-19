

###############
# choose file #
###############

# does what it says on the tin
# opens up a little browser window and allows you to pick a file

data <- read.csv(choose.files())

# can be used in source or readxl or whatever

#####################################
# console messages and progress bars#
#####################################

# really useful for more reproducible and shared code,
# to aid other users of the code so they can help debug


library(cli)

a <- 'Hello'
b <- 'World'

cli_alert_success("Have assigned variables to a and b")

cli_alert_info("Please note variable a has been assigned as: {a}.")

cli_alert_warning("Variables combined make the message: {paste(a, b)}")

if (!exists('d')) {cli_alert_danger("Alert: d does not exist")}

# thats the end of messages and now we go into progress bars
# lets draw a line under messages

rule(center = "Progress bars")

# really useful for big loops of stuff
cli_progress_bar("processing data", total = 100)
for (i in 1:100) {
  Sys.sleep(5/100) # this is just pretending that I have some big data processing thing going on
  cli_progress_update()

# a big bold box
boxx("Hello there!", padding = 1, background_col = '#41B6E6')  

# can also add spinners to things
demo_spinners("clock")

# Not toally sure all of these are useful but I think
# a way to communicate progress of code to the user
# if a good thing

# more info in the cli package
# https://github.com/r-lib/cli?tab=readme-ov-file
# https://cli.r-lib.org/reference/index.html

