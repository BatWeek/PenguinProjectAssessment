

#This is a function to save figures as an svg file. The arguments are as follows:
#plot = the object name of the plot you want to save
#name = the name of the file you want to save it as (must end in .svg)
#width = the width of the output file
#height = the height of the output file
#scaling = size of the text and other elements
save.as.svg <- function(plot, name, x, y, scaling) {
  svglite(name, 
          width = x, 
          height = y, 
          scaling = scaling)
  print(plot)
  dev.off()
}
