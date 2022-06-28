#' Add Bezier Curve Lines
#' (https://ryancatalani.medium.com/creating-consistently-curved-lines-on-leaflet-b59bc03fa9dc)
#' @param map map
#' @param options paramétrage de la courbe
#' (liste à 6 élements : lng1, lat1, lng2, lat2, color, weight)
#' @export
#' @importFrom leaflet invokeMethod
#' @examples
#' library(leaflet)
#' m <- leaflet() %>%
#'  addTiles() %>%
#'  addBezierCurve(options =
#'                   list(
#'                     lng1 = 2.3488,
#'                     lat1 = 48.8534,
#'                     lng2 = -0.57918,
#'                     lat2 = 44.837789,
#'                     color = "blue",
#'                     weight = 10
#'                   )
#'  )
addBezierCurve = function(map, options = list(lng1, lat1, lng2, lat2, color, weight, thetaOffset = 3.14/10)) {
  map$dependencies <- c(map$dependencies, list(html_dependency_leaflet_curve()))

  invokeMethod(
    map, data = NULL, method = "bezierCurve", options
  )
}
