library(scatterplot3d)
with(mtcars, {
  scatterplot3d(disp,   # x axis
                wt,     # y axis
                mpg,    # z axis
                main="3-D Scatterplot Example 1")
})

library(scatterplot3d)
with(mtcars, {
  scatterplot3d(disp, wt, mpg,        # x y and z axis
                color="blue", pch=19, # filled blue circles
                type="h",             # lines to the horizontal plane
                main="3-D Scatterplot Example 2",
                xlab="Displacement (cu. in.)",
                ylab="Weight (lb/1000)",
                zlab="Miles/(US) Gallon")
})



library(scatterplot3d)
with(mtcars, {
  s3d <- scatterplot3d(disp, wt, mpg,        # x y and z axis
                       color="blue", pch=19,        # filled blue circles
                       type="h",                    # vertical lines to the x-y plane
                       main="3-D Scatterplot Example 3",
                       xlab="Displacement (cu. in.)",
                       ylab="Weight (lb/1000)",
                       zlab="Miles/(US) Gallon")
  s3d.coords <- s3d$xyz.convert(disp, wt, mpg) # convert 3D coords to 2D projection
  text(s3d.coords$x, s3d.coords$y,             # x and y coordinates
       labels=row.names(mtcars),               # text to plot
       cex=.5, pos=4)           # shrink text 50% and place to right of points)
})

library(scatterplot3d)
# create column indicating point color
mtcars$pcolor[mtcars$cyl==4] <- "red"
mtcars$pcolor[mtcars$cyl==6] <- "blue"
mtcars$pcolor[mtcars$cyl==8] <- "darkgreen"
with(mtcars, {
  s3d <- scatterplot3d(disp, wt, mpg,        # x y and z axis
                       color=pcolor, pch=19,        # circle color indicates no. of cylinders
                       type="h", lty.hplot=2,       # lines to the horizontal plane
                       scale.y=.75,                 # scale y axis (reduce by 25%)
                       main="3-D Scatterplot Example 4",
                       xlab="Displacement (cu. in.)",
                       ylab="Weight (lb/1000)",
                       zlab="Miles/(US) Gallon")
  s3d.coords <- s3d$xyz.convert(disp, wt, mpg)
  text(s3d.coords$x, s3d.coords$y,     # x and y coordinates
       labels=row.names(mtcars),       # text to plot
       pos=4, cex=.5)                  # shrink text 50% and place to right of points)
  # add the legend
  legend("topleft", inset=.05,      # location and inset
         bty="n", cex=.5,              # suppress legend box, shrink text 50%
         title="Number of Cylinders",
         c("4", "6", "8"), fill=c("red", "blue", "darkgreen"))
})


options(digits = 3)
library(reshape)

# define and name the statistics of interest
stats <- function(x)(c(N = length(x), Mean = mean(x), SD = sd(x)))

# label the levels of the classification variables (optional)
mtcars$am   <- factor(mtcars$am, levels = c(0, 1), labels = c("Automatic", "Manual"))
mtcars$gear <- factor(mtcars$gear, levels = c(3, 4, 5),
                      labels = c("3-Cyl", "4-Cyl", "5-Cyl"))

# melt the dataset
dfm   <- melt(mtcars,
              # outcome variables
              measure.vars = c("mpg", "hp", "wt"),
              # classification variables
              id.vars = c("am", "gear"))

# statistics for the entire sample
cast(dfm, variable ~ ., stats)

# statistics for cells defined by transmission type
cast(dfm, am + variable ~ ., stats)

# statistics for cells defined by number of gears
cast(dfm, gear + variable ~ ., stats)

# statistics for cells defined by each am x gear combination
cast(dfm, am + gear + variable ~ ., stats)
