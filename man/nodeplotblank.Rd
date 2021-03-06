\name{nodeplotblank}
\alias{nodeplotblank}
\title{Function to avoid plotting node labels}
\usage{
  nodeplotblank(p, nodelabdf)
}
\arguments{
  \item{p}{(Required). The \code{\link{plot_tree}}
  graphic.}

  \item{nodelabdf}{(Required). The \code{data.frame}
  produced internally in \code{link{plot_tree}} to use as
  data for creating ggplot2-based tree graphics.}
}
\value{
  The same input object, \code{p}, provided as input.
  Unmodified.
}
\description{
  Unlike, \code{\link{nodeplotdefault}} and
  \code{\link{nodeplotboot}}, this function does not return
  a function, but instead is provided directly to the
  \code{nodelabf} argument of \code{\link{plot_tree}} to
  ensure that node labels are not added to the graphic.
  Please note that you do not need to create or obtain the
  arguments to this function. Instead, you can provide this
  function directly to \code{\link{plot_tree}} and it will
  know what to do with it. Namely, use it to avoid plotting
  any node labels.
}
\examples{
data("esophagus")
plot_tree(esophagus)
plot_tree(esophagus, nodelabf=nodeplotblank)
}
\seealso{
  \code{\link{nodeplotdefault}}

  \code{\link{nodeplotboot}}

  \code{\link{plot_tree}}
}

