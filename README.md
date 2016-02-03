# install.load

R package used to check the local R library(ies) to see if the required package(s) is/are installed or not. If the package(s) is/are not installed, then the package(s) will be installed along with the required dependency(ies). This function pulls source or binary packages from the Revolution Analytics CRAN mirror and/or the USGS GRAN Repository. Lastly, the chosen package(s) is/are loaded.


# Installation

```R
install.packages("install.load")
```


# Examples
```R
library(install.load)
# This will install, if not already installed, and load the package(s)
install_load("chron")
install_load("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")
```
