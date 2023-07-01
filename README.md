# cbp: Continuous Binomial and Poisson Distributions

This package provides functions for working with continuous binomial and Poisson distributions, including density, distribution, quantile functions, and pseudo-random generation.

## Installation

You can install the package from GitHub with:

```R
# install.packages("devtools")
devtools::install_github("federicoandreis/cbp")
```
# Usage

Here are some examples of how to use the functions in this package:

```R
# Load the package
library(cbp)

# Compute the density of the continuous binomial distribution
dcbinom(0.5, 1, 0.5)

# Compute the density of the continuous Poisson distribution
dcpoisson(0.5, 1)

# Generate random deviates from a continuous binomial distribution
rcbinom(10, 1, 0.5)

# Generate random deviates from a continuous Poisson distribution
rcpoisson(10, 1)
```

# License
This package is released under the [GPL-3](https://www.gnu.org/licenses/gpl-3.0.en.html) license.

# Contributing
Contributions are welcome!


