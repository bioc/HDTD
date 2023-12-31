% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/orderdata.R
\name{orderdata}
\alias{orderdata}
\title{Reordering Row and Column Variables}
\usage{
orderdata(datamat, N, order.rows = NULL, order.cols = NULL)
}
\arguments{
\item{datamat}{numeric matrix containing the transposable data.}

\item{N}{positive integer number indicating the sample size, i.e., the
number of subjects.}

\item{order.rows}{numeric vector displaying the desired order of the row
variables.}

\item{order.cols}{numeric vector displaying the desired order of the column
variables.}
}
\value{
Returns a matrix of the same size as \code{datamat}.
}
\description{
This utility function rearranges the row and/or the column variables in a
desired order.
}
\details{
It is assumed that there are \code{nrow(datamat)} row variables and
\code{ncol(datamat)}/\code{N} column variables in \code{datamat}. Further,
\code{datamat} should be written in such a way that every
\code{ncol(datamat)}/\code{N} consecutive columns belong to the same subject
and the order of the column variables in each block is preserved across
subjects.
}
\examples{
data(VEGFmouse)
set.seed(1)
tissuesold <-  colnames(VEGFmouse[ ,1:9])
## Suppose that you want to order the tissues in the folowing order.
tissuesnew <- colnames(VEGFmouse[ ,1:9])[sample(9)]
tissuesnew
## To do this, create a numeric vector with the desired order.
ordtis <- pmatch(tissuesnew, tissuesold)
VEGFmousenew <- orderdata(datamat = VEGFmouse, N = 40, order.cols = ordtis)
colnames(VEGFmousenew)[1:9]
}
\seealso{
\code{\link{meanmat.ts}} and \code{\link{meanmat.hat}}.
}
\author{
Anestis Touloumis
}
