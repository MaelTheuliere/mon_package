#' convert a temperature from celcius to kelvin
#'
#' @param temp_c numeric. A temperature measured in celsius
#'
#' @return numeric. A temperature measured in kelvin
#' @importFrom assertthat is.number
#' @export
#'
#' @examples
#' celsius_to_kelvin(0)
celsius_to_kelvin <- function(temp_c) {
  assertthat::is.number(temp_c)
  temp_k <- temp_c + 273.15
  return(temp_k)
}
