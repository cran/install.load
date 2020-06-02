#' Load Packages
#'
#' Loads the listed packages only
#'
#' @param package1 R package.
#' @param ... Any additional R packages.
#'
#' @return Load \code{package1} and other packages listed in the arguments \code{...}.
#'
#'
#' @author maloneypatr, Irucka Embry
#'
#' @source
#' \enumerate{
#'    \item Check if R package is installed then load library answered by
#'	maloneypatr is the source for the original function. See
#'	\url{https://stackoverflow.com/questions/15155814/check-if-r-package-is-installed-then-load-library}.
#'    \item Error Handling in R By Nina Zumel, October 9, 2012, R-Bloggers. See
#'    \url{http://www.r-bloggers.com/error-handling-in-r/}.
#' }
#'
#'
#' @encoding UTF-8
#'
#' @seealso \code{\link{install_load}} if you are wanting to install and load packages
#'
#'
#'
#' @examples
#' \dontrun{
#' library("install.load")
#' # This will only load the package(s)
#' load_package("chron")
#'
#' load_package("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")
#' }
#'
#'
#' @importFrom checkmate qtest
#' @importFrom assertthat assert_that
#'
#' @export
# Source 1 begins
load_package <- function (package1, ...) {

  # convert arguments to vector
  packages <- c(package1, ...)

assert_that(qtest(packages, "S"), msg = "One of the provided package(s) is(are) not a string. Please make sure that each packages is a string.")
# only process with string values and provide a stop warning if not

  # start loop to attempt to load each package
  for (package in packages) {

      try(do.call(library, list(package))) # Source 2

    }
  }
# Source 1 ends
