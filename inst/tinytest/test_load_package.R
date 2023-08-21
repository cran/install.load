test_load_package <- function() {

expect_error(stop(load_package("notavailablepackage")))

  invisible(NULL)
}

test_load_package()
