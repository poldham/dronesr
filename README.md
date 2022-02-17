
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dronesr

<!-- badges: start -->
<!-- badges: end -->

The goal of `dronesr` is to provide access to datasets of scientific and
patent literature for use in WIPO training workshops in patent
analytics.

The package consists of a set of datasets for the scientific literature
(lit) and a set of datasets for patents (pat) that were downloaded from
the open access [Lens Scholarly and Patent
Databases](https://www.lens.org/) using the Lens Scholarly and Patent
APIs.

We recommend that you sign up for a free account with [the
Lens](https://www.lens.org/).

If using data in this packages please ensure that you provide a link to
[the Lens](https://www.lens.org/) and preserve the lens_id field when
creating data.

## Installation

You can install the development version of dronesr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("poldham/dronesr")
```

## Using dronesr

The package consists of one function that will download the literature
and patent datasets from the [Open Science Framework project
repository](https://osf.io/jr87e/) where the data is stored. If you will
not be using R then you can download the csv files as follows

-   literature <https://osf.io/96w8j/>. Click on the csv icon and then
    `Download as zip`.
-   patents <https://osf.io/e6h8x/>. Click on the csv icon and then
    `Download as zip`.

To use the package in R there is one function.

``` r
library(dronesr)

# download everything
drones_download(data = "all", dest = "dronesr_data")

# download literature only

drones_download(data = "lit", dest = "dronesr_data")

# download patent data only

drones_download(data = "pat", dest = "dronesr_data")
```

When you load the package this will download all the files onto the
destination that you specify (in this case
’dronesr_data`). The destination folder will be created if it does not exist. A`lit`and a`pat\`
folder with the files will be created.

If you do not specify a destination then a `dronesr_data` with a
lit`and`pat\` folder will be created.

That’s it for now.
