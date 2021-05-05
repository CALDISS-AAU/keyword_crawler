library(readr)
library(dplyr)
library(tidyr)
library(qgraph)

data_path <- file.path("D:", "data", "drmkc")
filenames <- c("drr-nw_20210505.csv")

drmkc_nwdf <- data.frame()

for (filename in filenames){
  df <- read_csv(file.path(data_path, filename)) %>%
    drop_na()
  
  drmkc_nwdf <- bind_rows(drmkc_nwdf, df)
  
}

#drmkc_nwdf <- read_csv(file.path(data_path, filename)) %>%
#  drop_na()

#dfgraph <- graph_from_data_frame(d = drmkc_nwdf, directed = FALSE)
#
#plot(dfgraph)

qgraph(drmkc_nwdf, 
       arrows = FALSE, 
       borders = TRUE, 
       label.scale = FALSE,
       directed = FALSE,
       edge.color = 'lightgreen',
       color = "lightblue",
       layout = "spring")