\name{summary.logregr.madlib}
\alias{summary.logregr.madlib}
\alias{summary.logregr.madlib.grps}

\title{Summary information for Logistic Regression output}
\description{
    The function prints the value of each element in the Logistic
    Regression output object.}

\usage{
\method{summary}{logregr.madlib}(object, ...)

\method{summary}{logregr.madlib.grps}(object, ...)
}

\arguments{
    \item{object}{Logistic regression object}

    \item{\dots}{
      Further arguments passed to or from other methods.
      This is currently not implemented.}
}

\value{
    The function returns the \code{logregr.madlib} or
    \code{logregr.madlib.grps} object passed to the function.
}

\author{
  Author: Predictive Analytics Team at Pivotal Inc.

  Maintainer: Hai Qian, Pivotal Inc. \email{hqian@gopivotal.com}
}

\seealso{
  \code{\link{madlib.glm}} wrapper for MADlib linear and logistic regressions.
  
  \code{\link{madlib.lm}} wrapper for MADlib linear regression
}


\examples{
    \dontrun{
## Suppose that a valid connection with ID 1 exists

## create a table from the example data.frame
source_data <- db.data.frame("madlibtestdata.log_breast_cancer_wisconsin")
preview(source_data, 10)

## logistic regression
fit <- madlib.logregr(y ~ x - 1 , data = source_data)
summary(fit)

## use I(.) for expressions
fit <- madlib.logregr(y ~ x + I(x^2) - 1, data = source_data)
summary(fit)
       }
}

\keyword{madlib}
\keyword{stats}
\keyword{math}