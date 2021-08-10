#' @importFrom htmltools htmlDependency
html_dependency_leaflet_curve <- function() {
  htmltools::htmlDependency(
    name = "leaflet-curve",
    version = "1.0.0",
    package = "leaflettools",
    src = c(file = "htmlwidgets"),
    all_files = TRUE,
    script = c("leaflet.curve.min.js", "bindings_leaflet.curve.js")
  )
}
