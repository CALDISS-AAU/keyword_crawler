library(readr)
library(dplyr)
library(tidyr)
library(qgraph)

data_path <- file.path("D:", "data", "drmkc")
filename <- "drmkc-nw_20210218.csv"

drmkc_nwdf <- read_csv(file.path(data_path, filename)) %>%
  drop_na()

dfgraph <- graph_from_data_frame(d = drmkc_nwdf, directed = FALSE)

plot(dfgraph)

qgraph(drmkc_nwdf, 
       arrows = FALSE, 
       borders = TRUE, 
       label.scale = FALSE,
       directed = FALSE,
       edge.color = 'lightgreen',
       color = "lightblue",
       layout = "spring")