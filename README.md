# install.load

R package used to check the local R library(ies) to see if the required package(s) is/are installed or not. If the package(s) is/are not installed, then the package(s) will be installed along with the required dependency(ies). This function pulls source or binary packages from the Rstudio-sponsored CRAN mirror and/or the USGS GRAN Repository. Lastly, the chosen package(s) is/are loaded.


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

install_load("data.table", "ggplot2", "directlabels", "ggthemes", "scales", "GGally", "vioplot", "beanplot")

# Please note that the various package dependency(ies) will also be installed, if not already installed, in the process of installing, if not already installed, the packages in each instance


# This will only load the package(s) -- It is assumed that the packages are in your library(ies)

load_package("chron")

load_package("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")

load_package("data.table", "ggplot2", "directlabels", "ggthemes", "scales", "GGally", "vioplot", "beanplot")
```
