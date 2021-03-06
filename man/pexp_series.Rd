% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exp_series.R
\name{pexp_series}
\alias{pexp_series}
\title{cdf for exponential series.}
\usage{
pexp_series(t, rates, lower.tail = T, log.p = F)
}
\arguments{
\item{t}{series system lifetime}

\item{rates}{rate parameters for exponential component lifetimes}

\item{lower.tail}{logical; logical; if TRUE (default), probabilities are \code{P[X<=x]}, otherwise, \code{P[X > x]}.}

\item{log.p}{return the log of the cdf}
}
\description{
cdf for exponential series.
}
