\name{topp}
\alias{topp}
\title{Make filter fun. that returns the most abundant \code{p} fraction of taxa}
\usage{
  topp(p, na.rm=TRUE)
}
\arguments{
  \item{p}{A numeric of length 1, indicating what fraction
  of the most abundant taxa should be kept.}

  \item{na.rm}{A logical. Should \code{NA}s be removed.
  Default is \code{TRUE}.}
}
\value{
  A function (enclosure), suitable for
  \code{\link{filterfun_sample}}, that will return
  \code{TRUE} for each element in the most abundant p
  fraction of taxa.
}
\description{
  Make filter fun. that returns the most abundant \code{p}
  fraction of taxa
}
\examples{
## Use simulated abundance matrix
# set.seed(711)
# testOTU <- otu_table(matrix(sample(1:50, 25, replace=TRUE), 5, 5), taxa_are_rows=FALSE)
# sample_sums(testOTU)
# f1  <- filterfun_sample(topp(0.2))
# (wh1 <- genefilter_sample(testOTU, f1, A=1))
# wh2 <- c(T, T, T, F, F)
# prune_taxa(wh1, testOTU)
# prune_taxa(wh2, testOTU)
}
\seealso{
  \code{\link{topk}}, \code{\link{topf}},
  \code{\link{topp}}, \code{\link{rm_outlierf}}
}

