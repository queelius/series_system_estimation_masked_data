% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{exp_series_stats_1}
\alias{exp_series_stats_1}
\title{Bootstrapped MLE sampling distribution statistics, compared with the
asymptotic theory, for exponential series system with 3 components.}
\format{
A data frame.
\describe{
\item{n}{sample size}
\item{asymptotic.mse}{asymptotic mean squared error of the MLE},
\item{boot.mse}{estimate of mean squared error using Bootstrap method}
\item{asymptotic.rate1.se}{asymptotic standard error of MLE for parameter rate1}
\item{boot.rate1.se}{estimate of standard error of MLE for parameter rate1 using Bootstrap method}
\item{asymptotic.rate2.se}{asymptotic standard error of MLE for parameter rate2}
\item{boot.rate2.se}{estimate of standard error of MLE for parameter rate2 using Bootstrap method}
\item{asymptotic.rate3.se}{asymptotic standard error of MLE for parameter rate3}
\item{boot.rate3.se}{estimate of standard error of MLE for parameter rate3 using Bootstrap method}
\item{rate1}{MLE for rate1}
\item{rate1.bias}{estimate of bias of rate1 using Boostrap method}
\item{rate2}{MLE for rate2}
\item{rate2.bias}{estimate of bias of rate2 using Boostrap method}
\item{rate3}{MLE for rate3}
\item{rate3.bias}{estimate of bias of rate3 using Boostrap method}
}
}
\source{
\url{https://github.com/queelius/series_system_estimation_masked_data/blob/master/data-raw/exp_series_stats_1.R}
}
\usage{
exp_series_stats_1
}
\description{
Bootstrapped MLE sampling distribution statistics, compared with the
asymptotic theory, for exponential series system with 3 components.
}
\keyword{datasets}
