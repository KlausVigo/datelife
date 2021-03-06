% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot_densitree}
\alias{plot_densitree}
\title{get a densiTree plot from a set of opentree_chronograms
if densiTree plot function throws an error, it chooses the tree with the most tips as consensus (using get_biggest_phylo)
we found that densiTree errors commonly from failing to do a consensus tree.}
\usage{
plot_densitree(trees, include = TRUE, ...)
}
\arguments{
\item{trees}{A list of trees as multiPhylo or as a plain list object.}

\item{include}{Boolean or numeric vector. Default to TRUE, keep all chronograms
in trees. If FALSE, exclude chronograms with only two tips. If numeric, it is used
as indices to subset trees object.}

\item{...}{Arguments passed on to \code{phangorn::densiTree}
\describe{
  \item{type}{a character string specifying the type of phylogeny, so far
"cladogram" (default) or "phylogram" are supported.}
  \item{alpha}{parameter for semi-transparent colors.}
  \item{direction}{a character string specifying the direction of the tree.
Four values are possible: "rightwards" (the default), "leftwards", "upwards",
and "downwards".}
  \item{optim}{not yet used.}
  \item{scaleX}{scale trees to have identical heights.}
  \item{col}{a skalar or vector giving the colours used to draw the edges for
each plotted phylogeny. These are taken to be in the same order than input
trees x. If fewer colours are given than the number of trees, then the
colours are recycled.}
  \item{width}{edge width.}
  \item{lty}{line type.}
  \item{cex}{a numeric value giving the factor scaling of the tip labels.}
  \item{font}{an integer specifying the type of font for the labels: 1 (plain text),
2 (bold), 3 (italic, the default), or 4 (bold italic).}
  \item{tip.color}{color of the tip labels.}
  \item{adj}{a numeric specifying the justification of the text strings of the
labels: 0 (left-justification), 0.5 (centering), or 1 (right-justification).}
  \item{srt}{a numeric giving how much the labels are rotated in degrees.}
  \item{underscore}{a logical specifying whether the underscores in tip labels
should be written as spaces (the default) or left as are (if TRUE).}
  \item{label.offset}{a numeric giving the space between the nodes and the tips of the
phylogeny and their corresponding labels.}
  \item{scale.bar}{a logical specifying whether add scale.bar to the plot.}
  \item{jitter}{allows to shift treees. a list with two arguments: the amount of
jitter and random or equally spaced (see details below)}
}}
}
\description{
get a densiTree plot from a set of opentree_chronograms
if densiTree plot function throws an error, it chooses the tree with the most tips as consensus (using get_biggest_phylo)
we found that densiTree errors commonly from failing to do a consensus tree.
}
