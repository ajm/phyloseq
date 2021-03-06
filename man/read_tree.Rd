\name{read_tree}
\alias{read_tree}
\title{Somewhat flexible tree-import function}
\usage{
  read_tree(treefile, errorIfNULL = FALSE, ...)
}
\arguments{
  \item{treefile}{(Required). A character string implying a
  file \code{\link{connection}} (like a path or URL), or an
  actual \code{\link{connection}}. Must be a Newick- or
  Nexus-formatted tree.}

  \item{errorIfNULL}{(Optional). Logical. Should an error
  be thrown if no tree can be extracted from the
  connection? Default is \code{FALSE}, indicating that
  \code{NULL} will be SILENTLY returned, rather than an
  error. Be cautious about this behavior. Useful for
  phyloseq internals, but might be hard to track in
  treefileyour own code if you're not aware of this ``no
  error by default'' setting. If this is a problem, change
  this value to \code{TRUE}, and you can still use the
  function.}

  \item{...}{(Optional). Additional parameter(s) passed to
  the relevant tree-importing function.}
}
\value{
  If successful, returns a \code{\link{phylo}}-class object
  as defined in the \code{\link[ape]{ape-package}}. Returns
  NULL if neither tree-reading function worked.
}
\description{
  This function is a convenience wrapper around the
  \code{\link[ape]{read.tree}} (Newick-format) and
  \code{\link[ape]{read.nexus}} (Nexus-format) importers
  provided by the \code{\link[ape]{ape-package}}. This
  function attempts to return a valid tree if possible
  using either format importer. If it fails, it silently
  returns \code{NULL} by default, rather than throwing a
  show-stopping error.
}
\details{
  read_tree(treefile, errorIfNULL=FALSE, ...)
}
\examples{
read_tree(system.file("extdata", "esophagus.tree.gz", package="phyloseq"))
read_tree(system.file("extdata", "GP_tree_rand_short.newick.gz", package="phyloseq"))
}
\seealso{
  \code{\link{phylo}}, \code{\link[ape]{read.tree}},
  \code{\link[ape]{read.nexus}}
}

