test_install_load <- function() {

options(repos = "https://cloud.r-project.org")

expect_error(stop(install_load("notavailablepackage")))

  invisible(NULL)
}

test_install_load()
