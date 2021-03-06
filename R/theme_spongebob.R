#' @title theme_spongeBob
#' @description Spongebob Squarepants theme, Recommended font: "Some Time Later"
#' @details Spongbobify your plots even more by combining with `paintBikiniBottom()`!
#' @param text.font text font, Default: NULL
#' @param title.font title font, Default: NULL
#' @param legend.font legend font, Default: NULL
#' @param title.size size of title, Default: 18
#' @param text.size text font size, Default: 12
#' @param subtitle.size subtitle font size, Default:12
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 10
#' @param legend.text.size legend text font size, Default: 9
#' @param title.color title color, Default: "F9FEFF"
#' @param subtitle.color subtitle.color, Default: "F9FEFF"
#' @param text.color text color, Default: "F9FEFF"
#' @param axis.title.color axis title color, Default: "F9FEFF"
#' @param axis.text.color axis text color, Default: "F9FEFF"
#' @param legend.title.color legend title color, Default: "F9FEFF"
#' @param legend.text.color legend text color, Default: "F9FEFF"
#' @param legend.position legend position, Default: "bottom"
#' @examples
#' \dontrun{
#' if(interactive()){
#'  ggplot(mtcars, aes(x = hp, y = mpg)) +
#'  geom_point() +
#'  theme_spongeBob()
#'  }
#' }
#' @rdname theme_spongeBob
#' @seealso [ggplot2::theme]
#' @importFrom ggplot2 element_text element_rect element_blank element_line
#' @export

theme_spongeBob <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 18,
  text.size = 12,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = "#F9FEFF",
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF",
  legend.position = "bottom"){

  ggplot2::theme_minimal() +
  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        plot.title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#21B8E3"),
        panel.background = element_rect(color = NA, fill = "#21B8E3"),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.position = legend.position,
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#21B8E3", linetype = "solid")
        )
}
