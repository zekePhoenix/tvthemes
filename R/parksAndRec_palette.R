## Parks & Rec regular palette ----
parksAndRec_palette <- c(
  "#bdbdbd", ## yellowtan #fcf7e8  grey #969696    #bdbdbd
  "#a51209", ## maroon
  "#ffdb58",  ## lighter green (turqoise-ish) #238443     #ffdb58  mustard
  "#ec7014",  ## #4C3114 darker brown   #ec7014 darker orange
  "#7A491E",  ## regular brown
  "#C24841", ## darker reddish-orange
  "#005502", ## darker green
  "#f7fcb9",  ## lime green <<<<
  "#69983a", ## lightish gree #1A5E1F darkgreen
  "#b5651d"  ## beige #fee0d2     #b5651d light brown
)

#1A5E1FFF ## darkgreen
#CCFFBB ## lime green
#238443 ## lighter green
#4C3114 ## darker brown
#7A491E ## regular brown
#005502 ## darker green
#fcf7e8 ## grass green

#' @title Parks & Recreation palette
#' @description Parks & Recreation palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname parksAndRec_pal
#' @export
#' @importFrom scales manual_pal

parksAndRec_pal <- function(){
  scales::manual_pal(parksAndRec_palette)
}

#' @title scale_color_parksAndRec
#' @rdname parksAndRec_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_parksAndRec <- function(...){
  ggplot2::discrete_scale("color", "parksAndRec", parksAndRec_pal(), ...)
}

#' @title scale_colour_parksAndRec
#' @rdname parksAndRec_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_parksAndRec <- scale_color_parksAndRec

#' @title scale_fill_parksAndRec
#' @rdname parksAndRec_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_parksAndRec <- function(...){
  ggplot2::discrete_scale("fill", "parksAndRec", parksAndRec_pal(), ...)
}
