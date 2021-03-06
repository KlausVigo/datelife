% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datelife_sdm.R
\name{get_sdm}
\alias{get_sdm}
\title{Get SDM result for list of working matrices.}
\usage{
get_sdm(unpadded.matrices, weighting, verbose)
}
\arguments{
\item{unpadded.matrices}{A list of patristic matrices, a datelifeResult object.}

\item{weighting}{A character vector indicating how much weight to give to each input tree in the SDM analysis.
     Choose one of:
\describe{
\item{weighting = "flat"}{All trees have equal weighting.
}
\item{weighting = "taxa"}{Weight is proportional to number of taxa.
}
\item{weighting = "inverse"}{Weight is proportional to 1 / number of taxa.
}
}}

\item{verbose}{Boolean. If TRUE, it gives printed updates to the user.}
}
\value{
A matrix.
}
\description{
Get SDM result for list of working matrices.
}
