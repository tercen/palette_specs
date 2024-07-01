library(dplyr)
library(jsonlite)
source("utils.R")

### Sequential

# Jet
sequential <- list(
  Jet = c("#00007F", "blue", "#007FFF", "cyan", "#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"), # Jet
  Spectral = RColorBrewer::brewer.pal(11, "Spectral"),
  Reds = c("#f7f7f7", "#ca0020"), # Reds
  Greys = c("#f7f7f7", "#404040"), # Greys
  Viridis = viridisLite::viridis(5),
  GnBu = RColorBrewer::brewer.pal(9, "GnBu"),
  YlGnBu = RColorBrewer::brewer.pal(9, "YlGnBu"),
  PuRd = RColorBrewer::brewer.pal(9, "PuRd"),
  Winter = c('#0000ff', '#0019f2', '#0033e6', '#004cd9', '#0066cc', '#0080bf',
    '#0099b2', '#00b3a6', '#00cc99', '#00e68c', '#00ff80'), # winter
  Cool = c('#00ffff', '#19e6ff', '#33ccff', '#4cb3ff', '#6699ff', '#807fff',
    '#9966ff', '#b34cff', '#cc33ff', '#e619ff', '#ff00ff'), # cool
  Wistia = c('#e4ff7a', '#eff654', '#faed2d', '#ffe015', '#ffce0a', '#ffbd00',
    '#ffb100', '#ffa600', '#fe9900', '#fd8c00', '#fc7f00'), # Wistia
  Hot = c('#0b0000', '#4c0000', '#900000', '#d20000', '#ff1700', '#ff5c00',
    '#ff9d00', '#ffe100', '#ffff36', '#ffff9d', '#ffffff'), # hot
  Afmhot = c('#000000', '#320000', '#660000', '#981800', '#cc4d00', '#ff8001',
    '#ffb233', '#ffe667', '#ffff99', '#ffffcd', '#ffffff') # afmhot
)

### Diverging

diverging <- list(
  RdBu = RColorBrewer::brewer.pal(3, "RdBu"),
  PiYG = RColorBrewer::brewer.pal(3, "PiYG")
)

### Categorical
categorical <- list(
  Accent = RColorBrewer::brewer.pal(8, "Accent"),
  Dark2 = RColorBrewer::brewer.pal(8, "Dark2"),
  Set1 = RColorBrewer::brewer.pal(9, "Set1"),
  Set2 = RColorBrewer::brewer.pal(8, "Set2"),
  Set3 = RColorBrewer::brewer.pal(12, "Set3"),
  tab10 = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b',
    '#e377c2', '#7f7f7f', '#bcbd22', '#17becf', '#17becf'), # tab10
  tab20 = c('#1f77b4', '#aec7e8', '#ff7f0e', '#ffbb78', '#2ca02c', '#98df8a',
    '#d62728', '#ff9896', '#9467bd', '#c5b0d5', '#8c564b', '#c49c94',
    '#e377c2', '#f7b6d2', '#7f7f7f', '#c7c7c7', '#bcbd22', '#dbdb8d',
    '#17becf', '#9edae5')# tab20
)

reformat <- function(x, i, t) (list(name = i, type = t, colors = x))

c(
  unname(Map(reformat, sequential, names(sequential), "sequential")),
  unname(Map(reformat, diverging, names(diverging), "diverging")),
  unname(Map(reformat, categorical, names(categorical), "categorical"))
) %>%
  jsonlite::toJSON(., auto_unbox = T) %>%
  jsonlite::prettify() %>%
  writeLines("palettes.json")

