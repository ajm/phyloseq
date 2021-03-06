###############################################
#'  Handling and analysis of high-throughput phylogenetic sequence data.
#'
#' There are already several ecology and phylogenetic packages available in R, including the adephylo, vegan, ade4, picante, ape, phangorn, phylobase, and OTUbase packages. These can already take advantage of many of the powerful statistical and graphics tools available in R. However, prior to \emph{phyloseq} a user must devise their own methods for parsing the output of their favorite OTU clustering application, and, as a consequence, there is also no standard within Bioconductor (or R generally) for storing or sharing the suite of related data objects that describe a phylogenetic sequencing project. The phyloseq package seeks to address these issues by providing a related set of S4 classes that internally manage the handling tasks associated with organizing, linking, storing, and analyzing phylogenetic sequencing data. \emph{phyloseq} additionally provides some convenience wrappers for input from common clustering applications, common analysis pipelines, and native implementation of methods that are not available in other R packages.
#'
#' @name phyloseq-package
#' @author Paul J. McMurdie II \email{mcmurdie@@stanford.edu}
#' @references \url{www.stanford.edu/~mcmurdie}
#' @docType package
#' @keywords package
NA
###############################################
