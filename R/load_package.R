#' Load Packages
#'
#' Loads packages [It is assumed that the package(s) that you are wishing to
#' load already exist in your library(ies). If not, then use the install_load
#' function to install and then load the packages.]
#'
#' @param package1 R package.
#' @param ... Any additional R packages.
#'
#' @return Load \code{package1} and other packages listed in the arguments \code{...}.
#'
#'
#' @author maloneypatr, Irucka Embry
#'
#' @source Check if R package is installed then load library answered by
#'	maloneypatr is the source for the original function. See
#'	\url{http://stackoverflow.com/questions/15155814/check-if-r-package-is-installed-then-load-library}.
#'
#'
#'
#' @seealso \code{\link{install_load}}
#'
#'
#'
#' @examples
#' \dontrun{
#' library(install.load)
#' # This will only load the package(s), so the packages should already be
#' # available in your library(ies)
#' load_package("chron")

#' load_package("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")
#' }
#'
#'
#'
#' @export
# Source begins
load_package <- function (package1, ...) {


  # convert arguments to vector
  packages <- c(package1, ...)

  # start loop to determine if each package is installed
  for (package in packages) {

      do.call("library", list(package))

    }
  }
# Source ends
