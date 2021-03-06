\docType{methods}
\name{tax_table}
\alias{tax_table}
\alias{tax_table,ANY-method}
\alias{tax_table,data.frame-method}
\alias{tax_table,matrix-method}
\alias{taxtab}
\alias{taxTab}
\title{Build or access the taxonomyTable.}
\usage{
  tax_table(object, errorIfNULL=TRUE)

  taxtab(object, errorIfNULL = TRUE)

  taxTab(object, errorIfNULL = TRUE)
}
\arguments{
  \item{object}{An object among the set of classes defined
  by the phyloseq package that contain taxonomyTable.}

  \item{errorIfNULL}{(Optional). Logical. Should the
  accessor stop with an error if the slot is empty
  (\code{NULL})? Default \code{TRUE}.}
}
\value{
  A taxonomyTable object. It is either grabbed from the
  relevant slot if \code{object} is complex, or built anew
  if \code{object} is a character matrix representing the
  taxonomic classification of species in the experiment.
}
\description{
  This is the suggested method for both constructing and
  accessing a table of taxonomic names, organized with
  ranks as columns (\code{\link{taxonomyTable-class}}).
  When the argument is a character matrix, tax_table() will
  create and return a \code{\link{taxonomyTable-class}}
  object. In this case, the rows should be named to match
  the \code{species.names} of the other objects to which it
  will ultimately be paired. Alternatively, if the first
  argument is an experiment-level
  (\code{\link{phyloseq-class}}) object, then the
  corresponding \code{taxonomyTable} is returned. Like
  other accessors (see See Also, below), the default
  behavior of this method is to stop with an error if
  \code{object} is a \code{phyloseq-class} but does not
  contain a \code{taxonomyTable}.
}
\examples{
#
# tax1 <- tax_table(matrix("abc", 30, 8))
# data(GlobalPatterns)
# tax_table(GlobalPatterns)
}
\seealso{
  \code{\link{phy_tree}}, \code{\link{sample_data}},
  \code{\link{otu_table}} \code{\link{phyloseq}},
  \code{\link{merge_phyloseq}}
}

