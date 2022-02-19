
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dronesr

<!-- badges: start -->
<!-- badges: end -->

The goal of the `dronesr` R data package is to provide access to
datasets of scientific and patent literature on drone technology for use
in WIPO training workshops in patent analytics. The datasets are
exclusively intended for use in training and are deliberately noisy.

The package consists of a set of datasets for the scientific literature
(lit) and a set of datasets for patents (pat) that were downloaded from
the open access [Lens Scholarly and Patent
Databases](https://www.lens.org/) using the Lens Scholarly and Patent
APIs.

The datasets are available in public collections on the Lens where you
can interact with the data. We encourage you to use the public
collections to explore the data.

1.  The patent collection
    <https://www.lens.org/lens/search/patent/list?collectionId=199031>
2.  The literature collection
    <https://www.lens.org/lens/search/scholar/list?collectionId=199039>

To understand how the `dronesr` datasets were created please read [this
article](https://poldham.github.io/dronesr/articles/creating_dronesr.html).

We recommend that you sign up for a free account with [the
Lens](https://www.lens.org/).

If using data in this packages please ensure that you provide a link to
[the Lens](https://www.lens.org/) and credit the Lens for the data.
Please also preserve the `lens_id` field if creating any secondary
datasets.

## Installation

The `dronesr` data package is not on CRAN. You can install `dronesr`
from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("poldham/dronesr")
```

## Downloading Datasets

All datasets are included in the package in a compressed R format and
can be access by simply loading `library(lensr)`. However, if you want
to use the data outside R in Python, Tableau or other tools you are
likely to want to use csv format versions of the data.

csv copies of the datasets are accessible in csv format through an Open
Science Framework project folder at <https://osf.io/jr87e/>.

For convenience the csv files can also be downloaded directly in the
package using the `drones_download()` function as described below.
However,

## Using dronesr

The package consists two core datasets:

-   `pat` is a patent dataset with 49417 documents that mention drones.
    This is the core dataset with all other patent datasets linking to
    it.
-   `lit` is a dataset of scientific literature mentioning drones with
    45266 records.

The other datasets in the package have been split from the main sets. In
the case of the patent (pat) data the main split tables are:

-   applicants_cleaned
-   inventors_cleaned
-   ipc (international patent classification codes or symbols for
    technology areas)
-   patent abstract, patent title and pat title nouns for text analysis

For the literature (lit) set the main split tables at present focus on
text analysis:

-   lit title
-   lit abstract
-   lit title nouns

As with the scientific literature patent data operates a citation
system. Citations take three forms and are included with the package.

-   pat_cited. Patents cited in the core pat set. These back citations
    are to patent documents that shape what is claimed in the core set.
-   pat_citing. These are later filings that cite the core set. These
    forward citations are documents that are shaped by the prior art in
    the core set.
-   npl. NPL stands for non-patent literature which means citations to
    literature, websites, manuals etc that are not patent documents. In
    `dronesr` the npl dataset consists of scientific literature that is
    cited in core patent set.

Other linked datasets will be added in due course.

## Using `drones_download()`

The package includes one function that will download the literature and
patent datasets from the [Open Science Framework project
repository](https://osf.io/jr87e/) where the data is stored. If you will
not be using R then you can download the csv files as follows

-   literature <https://osf.io/96w8j/>. Click on the csv icon and then
    `Download as zip`.
-   patents <https://osf.io/e6h8x/>. Click on the csv icon and then
    `Download as zip`.

In R the sets will download to a destination that you provide. By
default the data will download into your working environment in a folder
called `dronesr_data`. The folder will be created if it does not already
exist. Under the hood the function uses the `osfr` package and
`drones_download()` defaults to overwriting any existing `dronesr_data`.
See the documentation for other options.

``` r
library(dronesr)

# download everything
drones_download(data = "all", dest = "dronesr_data")

# download literature only

drones_download(data = "lit", dest = "dronesr_data")

# download patent data only

drones_download(data = "pat", dest = "dronesr_data")
```

That’s all for now.
