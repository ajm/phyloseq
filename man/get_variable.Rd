\name{get_variable}
\alias{get_variable}
\alias{getVariable}
\title{Get the values for a particular variable in sample_data}
\usage{
  get_variable(physeq, varName)

  getVariable(physeq, varName)
}
\arguments{
  \item{physeq}{(Required).
  \code{\link{sample_data-class}}, or
  \code{\link{phyloseq-class}}.}

  \item{varName}{(Required). Character string of the
  variable name in \code{sample_data}. Use
  \code{sample_variables(physeq)} for available variables
  in your object.}
}
\value{
  Data. The clas of the data depends on what the contents
  of sample_data.
}
\description{
  This is a simple accessor function for streamlining
  access to values/vectors/factors/etc contained in the
  sample_data.
}
\examples{
# Load the GlobalPatterns dataset into the workspace environment
data(GlobalPatterns)
# Look at the different values for SampleType
get_variable(GlobalPatterns, "SampleType")
}
\seealso{
  \code{\link{get_taxa}} \code{\link{taxa_names}}
  \code{\link{sample_names}}

  \code{\link{sample_variables}}
}

