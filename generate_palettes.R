library(dplyr)
library(jsonlite)

hex <- RColorBrewer::brewer.pal(11, "Spectral")

jsonlite::toJSON(list(
  name = "Spectral",
  kind  = "diverging",
  hex_colors = hex,
  int_colors = apply(col2rgb(hex), 2, rgb_to_int)
), auto_unbox = T) %>%
  jsonlite::prettify() %>%
  jsonlite::write_json("palettes.json")

