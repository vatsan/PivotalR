\name{dim-methods}

\alias{dim,db.table-method}
\alias{dim,db.view-method}
\alias{dim,db.Rquery-method}

\title{Dimension of a table}

\description{
  Display the dimension of the table that a \code{db.table} object
  points to.
}

\usage{
\S4method{dim}{db.table}(x)

\S4method{dim}{db.view}(x)

\S4method{dim}{db.Rquery}(x)
}

\arguments{
  \item{x}{
    A \code{db.obj}. Only for \code{db.table} object, this function
  gives the dimension of table that \code{x} points to. For
  \code{db.view} and \code{db.Rquery} objects, an error message is raised.
  }
}

\value{
  A two-integer array, where the first integer is the number of rows and the
  second integer is the number of columns.
}

\author{
  Author: Predictive Analytics Team at Pivotal Inc.

  Maintainer: Hai Qian, Pivotal Inc. \email{hqian@gopivotal.com}
}

\seealso{
  \code{\linkS4class{db.obj}}, \code{\linkS4class{db.data.frame}},
  \code{\linkS4class{db.table}}, \code{\linkS4class{db.view}},
  \code{\linkS4class{db.Rquery}} are the class hierarchy structure of
  this package.
}

\examples{
\dontrun{
## Suppose that a valid connection with ID 1 exists

## create a table from the example data.frame "abalone"
x <- as.db.data.frame(abalone, "abalone")
## preview of a table
preview(x, nrows = 10) # extract 10 rows of data

## get names of all columns
dim(x)

dim(x[,1:3])
}
}

\keyword{methods}
\keyword{database}
