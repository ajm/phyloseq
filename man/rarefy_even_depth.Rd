\name{rarefy_even_depth}
\alias{rarefy_even_depth}
\title{Perform a random subsampling of an OTU table to a level of even depth.}
\usage{
  rarefy_even_depth(physeq,
  sample.size=min(sampleSums(physeq)))
}
\arguments{
  \item{physeq}{(Required). A \code{\link{phyloseq-class}}
  object that you want to trim/filter.}

  \item{sample.size}{(Optional). A single integer value
  equal to the number of reads being simulated, also known
  as the depth, and also equal to each value returned by
  \code{\link{sampleSums}} on the output.}
}
\value{
  An object of class \code{phyloseq}. Only the
  \code{otuTable} component is modified.
}
\description{
  This function uses the \code{\link{sample}} function to
  randomly subset from the abundance values in each sample
  of the \code{otutable} component in the \code{physeq}
  argument. Sampling is performed with replacement from a
  vector of taxa indices, with length equal to the argument
  to \code{sample.size}, and probability according to the
  abundances for that sample in \code{physeq}.
}
\details{
  This is sometimes (somewhat mistakenly) called
  "rarefaction", though it actually a single random
  subsampling procedure in this case. The original
  rarefaction procedure includes many random subsampling
  iterations at increasing depth as a means to infer
  richness/alpha-diversity

  Make sure to use \code{\link{set.seed}} for
  exactly-reproducible results of the random subsampling.
}
\examples{
set.seed(711)
# Test with esophagus dataset
data("esophagus")
eso <- rarefy_even_depth(esophagus)
plot(as(otuTable(eso), "vector"), as(otuTable(esophagus), "vector"))
UniFrac(eso); UniFrac(esophagus)
# Test with GlobalPatterns dataset
data("GlobalPatterns")
GP.chl <- subset_species(GlobalPatterns, Phylum=="Chlamydiae")
# remove the samples that have less than 20 total reads from Chlamydiae
GP.chl <- prune_samples(names(which(sampleSums(GP.chl)>=20)), GP.chl)
# # (p <- plot_tree(GP.chl, color="SampleType", shape="Family", label.tips="Genus", size="abundance"))
GP.chl.r <- rarefy_even_depth(GP.chl)
plot(as(otuTable(GP.chl.r), "vector"), as(otuTable(GP.chl), "vector"))
# Try ordination of GP.chl and GP.chl.r (default distance is unweighted UniFrac)
plot_ordination(GP.chl, ordinate(GP.chl, "MDS"), color="SampleType") #+ geom_point(size=5)
plot_ordination(GP.chl.r, ordinate(GP.chl.r, "MDS"), color="SampleType") #+ geom_point(size=5)
}
\seealso{
  \code{\link{sample}}

  \code{\link{set.seed}}
}
