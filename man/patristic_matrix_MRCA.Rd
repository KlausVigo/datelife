% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datelife_internal.R
\name{patristic_matrix_MRCA}
\alias{patristic_matrix_MRCA}
\title{Get time of MRCA from patristic matrix. Used in: datelife_result_MRCA.}
\usage{
patristic_matrix_MRCA(patristic_matrix, partial = TRUE)
}
\arguments{
\item{patristic_matrix}{A patristic matrix}

\item{partial}{If TRUE, drop NA from the patristic matrix; if FALSE, will return NA if there are missing entries}
}
\value{
The depth of the MRCA
}
\description{
Get time of MRCA from patristic matrix. Used in: datelife_result_MRCA.
}
