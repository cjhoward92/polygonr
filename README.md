
<!-- README.md is generated from README.Rmd. Please edit that file -->

# polygonr

<!-- badges: start -->
<!-- badges: end -->

The goal of polygonr is to make integration with the
[polygon.io](https://polygon.io) APIs simple within R.

## Installation

You can install the development version of polygonr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("cjhoward92/polygonr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(polygonr)

## Set the api key
set_api_key("my_api_key")
#> Setting polygon.io api key via funcion. This value has been set for the current sesion only. It's recommended to use the POLYGON_API_KEY environment variable in an .Renviron file using `usethis::edit_r_environ()` followed by restarting R.
```

## Development instructions

Make sure you run `library(devtools)` in your dev session before you do
anything else! If you want to update the readme, update this file.

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
