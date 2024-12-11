#This function cleans the penguins data.
clean.penguin.data <- function(data){
  data %>%
  clean_names() %>%
  select(-comments) %>%
  select(-starts_with("delta")) %>%
  select(-stage) %>%
  select(-individual_id) %>%
  select(-clutch_completion) %>%
  select(-date_egg) %>%
  mutate(species = case_when(
    species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
    species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
    species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo")) %>%
  na.omit()
}



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




