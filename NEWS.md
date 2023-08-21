# install.load 1.2.5 (21 August 2023)

* Received an e-mail issue from Kurt Hornik on 19 August 2023 regarding the use of "@docType package" which is no longer valid. Modified the install.load.R file to reflect the requested change.
* Added minimal code testing
* Moved from `testthat` to `tinytest` for testing & removed `testthat` from Suggests
* Added `spelling` to Suggests
* Removed text related to the USGS GRAN Repository
* Revised the README
* Added a CITATION file


# install.load 1.2.4 (25 November 2022)

* Changed all import statements to importFrom statements after an issue was filed by Toby Dylan Hocking for my `iemisc` package about `data.table` and `zoo` conflicts


# install.load 1.2.3

* Included all suggested, similar packages in the package description rather than including them as Suggested packages
* Added `try` to install_load function to continue installing packages even if one or more package(s) is/are not found
* Added `fastmatch`, `checkmate`, and `assertthat` to imported packages in DESCRIPTION
* Added `testthat` to Suggested packages (minimal code testing)


# install.load 1.2.1

* Added `try` to load_package function to continue loading packages even if one or more package(s) is/are not already installed. This removes the need to make sure that all packages are already installed prior to loading through load_package.
* Updated README.md file to include information on both functions
* Updated DESCRIPTION to include information on both functions


# install.load 1.1.1

* Added load_package function to load packages that are already known to be installed
* Added examples for load_packages to the README.md file
* Added pacman to DESCRIPTION Suggests


# install.load 1.0.5

* Changed CRAN mirror to https://cloud.r-project.org from https://cran.revolutionanalytics.com/


# install.load 1.0.4

* Removed compiler dependency (thank you to Barry Rowlingson)
* Added Import utils (thank you to the needs package)
* Added utils to DESCRIPTION Imports
* Added needs and easypackages to DESCRIPTION Suggests
* Changed from http to https CRAN Repository
* Cleaned up the code using the lintr package
* Revised the README.md


# install.load 1.0.3

* Changed the license from CC BY-SA 3.0 & CCO to CC BY-SA 4.0
* Changed the maintainer e-mail address
* Removed the USGS Copyright Notice from the README.md
* Changed from hosted at GitHub.com to GitLab.com


# install.load 1.0.2

* Changed the USGS R GitHub Repository to the USGS GRAN Repository (pointed out by Luke Winslow)
* Changed from minor release cycle to patch release cycle for these minor changes


# install.load 1.1.0

* Updated README.md with examples and USGS Copyright Notice


# install.load 1.0.0

* Initial release
