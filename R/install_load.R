#' Check, Install and Load CRAN Packages
#'
#' Checks the local R library(ies) to see if the required package(s)
#'	is/are installed or not. If the package(s) is/are not installed,
#'	then the package(s) will be installed along with the required
#'	dependency(ies). This function pulls source or binary packages
#'	from the 0-Cloud CRAN Repository. Lastly, the chosen
#'	package(s) is/are loaded.
#'
#' @param package1 R package.
#' @param ... Any additional R packages.
#'
#' @return Install and load \code{package1} and other packages listed
#'	in the arguments \code{...} and all of the dependencies.
#'
#'
#' @author maloneypatr, Irucka Embry
#'
#' @source
#' \enumerate{
#'    \item Check if R package is installed then load library answered by
#'	maloneypatr is the source for the original function. See
#'	\url{https://stackoverflow.com/questions/15155814/check-if-r-package-is-installed-then-load-library}.
#'    \item Error Handling in R By Nina Zumel, October 9, 2012, Win Vector LLC. See
#'    \url{https://win-vector.com/2012/10/09/error-handling-in-r/}.
#' }
#'
#'
#' @encoding UTF-8
#'
#' @seealso \code{\link{load_package}} to only load packages, \code{\link[utils]{installed.packages}},
#' \code{\link[utils]{install.packages}}
#'
#'
#'
#' @examples
#' \dontrun{
#' library("install.load")
#' # This will install, if not already installed, and load the package(s)
#' install_load("chron")

#' install_load("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")
#' }
#'
#'
#' @importFrom utils installed.packages
#' @importFrom fastmatch "%fin%"
#' @importFrom checkmate qtest
#' @importFrom assertthat assert_that
#'
#' @export
# Source begins
install_load <- function (package1, ...) {

  # convert arguments to vector
  packages <- c(package1, ...)

assert_that(qtest(packages, "S"), msg = "One of the provided package(s) is(are) not a string. Please make sure that each packages is a string.")
# only process with string values and provide a stop warning if not
  
  # start loop to determine if each package is installed
  for (package in packages) {

    # if package is installed locally, load
  if (package %fin% rownames(installed.packages()))
      try(do.call(library, list(package))) # Source 2

    # if package is not installed locally, download and then load
    else {

      install.packages(package, repos = "https://cloud.r-project.org",
        dependencies = NA, type = getOption("pkgType"))
      try(do.call(library, list(package))) # Source 2
    }
  }
}
# Source ends
