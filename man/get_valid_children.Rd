% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opentree_taxonomy.R
\name{get_valid_children}
\alias{get_valid_children}
\title{extracts valid children from a set of input names or ott ids (not from a taxonomy taxon info object)}
\usage{
get_valid_children(input = c("Felis", "Homo", "Malvaceae"),
  ott_ids = NULL)
}
\arguments{
\item{input}{Optional. A character vector of names or a datelifeQuery object}

\item{ott_ids}{If not NULL, it takes this argument and ignores input. A numeric vector of ott ids obtained with rotl::taxonomy_taxon_info or rolt::tnrs_match_names or datelife::tnrs_match}
}
\description{
extracts valid children from a set of input names or ott ids (not from a taxonomy taxon info object)
}
\details{
# genus Dictyophyllidites with ott id = 6003921 has only extinct children
# in cases like this the same name will be returned
tti <- rotl::taxonomy_taxon_info(6003921, include_children = TRUE)
gvc <- get_valid_children(ott_ids = 6003921)
# More examples:
get_valid_children(ott_ids = 769681) # Psilotopsida
get_valid_children(ott_ids = 56601)  # Marchantiophyta
}
