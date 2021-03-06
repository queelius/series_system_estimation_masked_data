
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Series Systems: Estimating Lifetime Distributions of Unobserved Components with Masked Data

This R package, `series_system_estimation_masked_data`, provides a set
of functions for generating MLEs for the lifetime parameters of series
systems and other related characteristics from *masked data*.

Masked data comes in a variety of forms:

1.  The system lifetime can be masked in three related ways. First,
    right censoring occurs when the system under observation is only
    known to have survived for some minimum length of time. Second, left
    censoring occurs when the system under observation is only know to
    have survived for some maximum length of time. Finally, interval
    censoring occurs when the system under observation is only known to
    have survived between some minimum and maximum length of time.

    In the unmasked situation, we know precisely how long the system
    under observation survived.

2.  Regardless of how the series system lifetime is masked, the lifetime
    of the components may be masked in any of the ways described in item
    (1). There is, additionally, another kind of masking we would like
    to consider. What if we do not observe any of the component
    lifetimes, and instead are only given a (potentially masked) series
    system lifetime, and a *candidate set* of component indexes which
    plausibly contains the failed component index.

    For a series system of
    ![m](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;m "m")
    components, the candidate sets are subsets of
    ![\\{1,\ldots,m\\}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5C%7B1%2C%5Cldots%2Cm%5C%7D "\{1,\ldots,m\}"),
    excluding the empty set in cases where we observe a series system
    failure.

This R package is mostly concerned with masked data that takes the form
of a (potentially masked) series system lifetime and a set of candidate
components. (If the series system lifetime is right censored, then the
candidate set is naturally empty since no component has failed yet.)

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the development version of
`series_system_estimation_masked_data` like so:

``` r
devtools::install_github("queelius/series_system_estimation_masked_data")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#library(series_system_estimation_masked_data)

## basic example code
```

## TODO

1.  might be interesting to predict system lifetime based on candidate
    covariates.

2.  might be interesting to predict node lifetimes based on candidate
    covariates and system lifetime

3.  extract sampler and other related stuff, like random variables (not
    series variations) into a algebraic_random_elements R package.

4.  compare info/cov with bootstrap version

# The formula interface for masked data model fitting

The function to fit a masked data model take two arguments, a formula
expressing the structure of the model and a source of data; it then
returns an object representing the fitted model consistent with the
arguments.

The `md` function fits a masked data model using maximum likelihood
estimation to estimate the parameters of the parameters of the latent
component lifetimes.

It takes two arguments, a formula expressing the structure of the model
and a source of data (a data frame, typically).

The object representing the fitted model is a child of `md_mle`.
`md_mle` inherits from `mle`, which defines an algebra over MLEs.
