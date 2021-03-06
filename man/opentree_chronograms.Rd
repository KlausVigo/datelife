% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opentree_chronograms.R
\docType{data}
\name{opentree_chronograms}
\alias{opentree_chronograms}
\title{Chronograms in Open Tree of Life and other related data}
\format{A list of four elements, containing data on OToL chronograms
\describe{
  \item{authors}{List of lists of authors of the included studies}
  \item{curators}{List of lists of curators of the included studies}
  \item{studies}{List of study identifiers}
  \item{trees}{List storing the chronograms from OpenTree}
}}
\source{
\url{http://opentreeoflife.org}
}
\usage{
opentree_chronograms
}
\description{
Now storing >200 chronograms from OToL
}
\details{
Generated with
opentree_chronograms <- get_otol_chronograms()
usethis::use_data(opentree_chronograms, overwrite = T)
and updtated with update_datelife_cache()
}
\keyword{chronogram}
\keyword{otol}
\keyword{tree}
