\name{import_mothur_otu_table}
\alias{import_mothur_otu_table}
\title{Import mothur list and group files and return an otu_table}
\usage{
  import_mothur_otu_table(mothur_list_file,
  mothur_group_file, cutoff=NULL)
}
\arguments{
  \item{mothur_list_file}{The list file name and/or
  location as produced by \emph{mothur}.}

  \item{mothur_group_file}{The name/location of the group
  file produced by \emph{mothur}'s \code{make.group()}
  function. It contains information about the sample source
  of individual sequences, necessary for creating a
  species/taxa abundance table (\code{otu_table}). See
  \code{http://www.mothur.org/wiki/Make.group}}

  \item{cutoff}{A character string indicating the cutoff
  value, (or \code{"unique"}), that matches one of the
  cutoff-values used to produce the OTU clustering results
  contained within the list-file created by \emph{mothur}
  (and specified by the \code{mothur_list_file} argument).
  The default is to take the largest value among the cutoff
  values contained in the list file. If only one cutoff is
  included in the file, it is taken and this argument does
  not need to be specified. Note that the \code{cluster()}
  function within the \emph{mothur} package will often
  produce a list file with multiple cutoff values, even if
  a specific cutoff is specified. It is suggested that you
  check which cutoff values are available in a given list
  file using the \code{\link{show_mothur_list_cutoffs}}
  function.}
}
\value{
  An \code{\link{otu_table}} object.
}
\description{
  Import mothur list and group files and return an
  otu_table
}
\seealso{
  \code{\link{import_mothur}}
}
\keyword{internal}

