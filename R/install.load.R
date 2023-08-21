#' install.load: Check, Install and Load CRAN Packages
#'
#' install.load provides the function `install_load` which checks the local R
#' library(ies) to see if the required package(s) is/are installed or not. If
#' the package(s) is/are not installed, then the package(s) will be installed
#' along with the required dependency(ies). This function pulls source or
#' binary packages from the Posit/RStudio-sponsored CRAN mirror Repository.
#' Lastly, the chosen package(s) is/are loaded. The function
#' `load_package` simply loads the provided package(s).
#'

#' @keywords internal
"_PACKAGE"

#' @importFrom utils install.packages installed.packages
#' @importFrom fastmatch "%fin%"
#' @importFrom checkmate qtest
#' @importFrom assertthat assert_that
NULL
