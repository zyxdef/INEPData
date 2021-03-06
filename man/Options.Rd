% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{Options}
\alias{Options}
\title{Options for package \code{inepdata}}
\usage{
Options(..., zip.path, offline, download.page.url, temp.path, keep.download,
  verbose)
}
\arguments{
\item{...}{these dots are here just to force parameters to be explicitly named}

\item{zip.path}{paths to directories where the downloaded zip files are located,
so that those zip files will not be downloaded if available locally.
If you are not going to work with already downloaded ZIP files,
then set \code{zip.path} to \code{NULL} or to \code{""}.\preformatted{**Important**: the filenames must be equal to the corresponding file in INEP site.

Default value: `""`
}}

\item{offline}{whether you want to work only with ZIP files already downloaded at \code{zip.path}
or work scrape ZIP file links in INEP microdata download page at \code{download.page.url}.
If \code{offline} is \code{TRUE}, then \code{zip.path} will need to be set to a value other than \code{""}\preformatted{Default value: `FALSE`
}}

\item{download.page.url}{external HTML page from which the ZIP URLs will be scraped if \code{offline} is false.
It is there just in case the package fails to fetch the correct URL
from INEP's site -- which can occur when INEP alters its site structure,
for instance.
(\emph{Should you detect this kind of occurrence, please contact this package's author,
just in case he haven't noticed that yet.})
If you want \code{download.page.url} back to its default value,
then set \code{download.page.url} to \code{NULL} or to \code{""}.\preformatted{Default Value: `"http://portal.inep.gov.br/web/guest/microdados"`
}}

\item{temp.path}{where should the microdata ZIP files be downloaded and decompressed?
It cannot be set "" and, if attempted, it is set to its default value "./temp".\preformatted{Default value: `"./temp"`
}}

\item{keep.download}{whether to keep or purge the downloaded packed microdata files\preformatted{Default value: `FALSE`
}}

\item{verbose}{do you want know what is going on under the hood while these functions
are running?\preformatted{ Default value: `FALSE`
}}
}
\description{
Options for package \code{inepdata}
}
\examples{
# in case INEP microdata download page changes:
options(download.page.url = "http://inep.hypothetical.new.page/microdata")
# if you have part of your data already downloaded
options(zip.path = "./zipfiles.I.already.downloaded/")
# if you only want to work with the data you already downloaded, without looking at INPE's page
options(download.page.url = "", zip.path = "./zipfiles.I.already.downloaded/") #
options(temp.path = "/tmp/")     # Unix example
options(keep.download = TRUE, temp.path = "./store.zip.files.here/")

}
