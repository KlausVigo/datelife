
#' Takes a tree and uses bladj to estimate node ages and branch lengths given a set of fixed node ages and respective node names
#' @param nodenames A character vector with names of nodes in tree with known ages
#' @param nodeages A numeric vector with the actual ages of named nodes
#' @inheritParams tree_fix_brlen
#' @return A phylo tree
#' @details tree can or cannot be dated, edge.lengths in it will be ignored anyways;
#' only ages from nodeages will be fixed according to nodenames.
#' @export
make_bladj_tree <- function(tree = NULL, nodenames = NULL, nodeages = NULL){
	# tree <- missing_taxa_phy
	phy <- tree_check(tree = tree, dated = FALSE)
	# needs to be fully resolved to work with bladj?
	# ape::is.binary(phy)
	if(is.null(phy$node.label)) {
		stop("phy must have node labels")
	}
	if(!is.null(phy$edge.length)) {
		phy$edge.length <- NULL
	}
	m <- match(nodenames, phy$node.label)
	if(any(is.na(m))) {
		warning("Not all nodenames are in phy$node.label; these will be ignored.") # add a printed line saying which nodenames are not in phy$node.label
		nodenames <- nodenames[!is.na(nodenames)]
	}
	if(length(nodenames) != length(nodeages)) {
		stop("nodenames and nodeages must have the same length")
	}
	if(!is.character(nodenames)) {
		stop("nodenames must be a character vector")
	}
	if(!is.numeric(nodeages)) {
		stop("nodeages must be a numeric vector")
	}
	ages_df <- data.frame(
		a = nodenames,
		b = nodeages
	)
	class(phy) <- "phylo" # cannot have more classes to be used by ph_bladj next:
	new.phy <- phylocomr::ph_bladj(ages = ages_df, phylo = phy)
	attributes(new.phy) <- NULL
	new.phy <- phytools::read.newick(text = new.phy)
	# to keep the same names as original phy (bladj modifies all names to lowercase):
	phy <- phylo_tiplabel_space_to_underscore(phy)
	index <- match(tolower(phy$tip.label), new.phy$tip.label)
	new.phy$tip.label[index] <- phy$tip.label
	return(new.phy)
}
