# install.load

R package containing 2 functions dealing with installing and loading or simply loading packages. The function `install_load` checks the local R library(ies) to see if the required package(s) is/are installed or not. If the package(s) is/are not installed, then the package(s) will be installed along with the required dependency(ies). This function pulls source or binary packages from the Posit/RStudio-sponsored CRAN mirror. Lastly, the chosen package(s) is/are loaded. The function `load_package` simply loads the provided package(s).



# Installation of install.load from CRAN

```R
install.packages("install.load")
```



# Help

With credit due to the `matlab` package, for a complete list of functions and the package DESCRIPTION file, use `R library(help = "install.load")`  

With credit due to [Getting Help with R](https://www.r-project.org/help.html) for the following 2 methods of help:  

```R
R help(load_package, package = "install.load") # check, install and load CRAN packages function help

R help(package = "install.load") # help for the install.load package
```



# Examples

```R
library("install.load")

# This will install, if not already installed, and load the package(s)

install_load("chron")

install_load("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")

install_load("data.table", "ggplot2", "directlabels", "ggthemes", "scales", "GGally", "vioplot", "beanplot")

# Please note that any package dependency(ies) will also be installed, if not already installed, during the installation process for each package




# This will only load the package(s) assuming that it(they) has(have) already been installed

load_package("chron")

load_package("chron", "data.table", "dataRetrieval", "EGRET", "dplyr")

load_package("data.table", "ggplot2", "directlabels", "ggthemes", "scales", "GGally", "vioplot", "beanplot")
```



# EcoC²S Links

EcoC²S Home -- https://www.ecoccs.com/  
About EcoC²S -- https://www.ecoccs.com/about_ecoc2s.html  
Services -- https://www.ecoccs.com/services.html  
1 Stop Shop -- https://www.ecoccs.com/other_biz.html  
Products -- https://www.questionuniverse.com/products.html  
Media -- https://www.ecoccs.com/media.html  
Resources -- https://www.ecoccs.com/resources.html  
R Trainings and Resources provided by EcoC²S (Irucka Embry, E.I.T.) -- https://www.ecoccs.com/rtraining.html  



# Copyright and License

All R code written by Irucka Embry is distributed under the GPL-3 (or later) license, see the [GNU General Public License {GPL} page](https://www.gnu.org/licenses/gpl-3.0.html).  

All written content originally created by Irucka Embry is copyrighted under the Creative Commons Attribution-ShareAlike 4.0 International License. All other written content retains the copyright of the original author(s).  

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).  
