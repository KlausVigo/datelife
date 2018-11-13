% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_calibrations.R
\name{clean_tnrs}
\alias{clean_tnrs}
\title{Eliminate unmatched (NAs) and invalid taxa from a tnrs_match_names object
Because using include_suppressed = FALSE in tnrs_match_names does not drop all invalid taxa (that will give an error while trying to retrieve an otol induced subtree).}
\usage{
clean_tnrs(tnrs, invalid = c("barren", "extinct", "uncultured",
  "major_rank_conflict", "incertae", "unplaced", "conflict"))
}
\arguments{
\item{tnrs}{A data frame, usually an output from datelife::batch_tnrs_match_names or rotl::tnrs_match_names functions, but see details.}

\item{invalid}{A character string with flags to be removed from final object.}
}
\value{
A data frame or named list (depending on the input) with valid taxa only.
}
\description{
Eliminate unmatched (NAs) and invalid taxa from a tnrs_match_names object
Because using include_suppressed = FALSE in tnrs_match_names does not drop all invalid taxa (that will give an error while trying to retrieve an otol induced subtree).
}
\details{
Input can be any data frame or named list that relates taxa stored in an element named "unique" to a validity category stored in "flags".
}