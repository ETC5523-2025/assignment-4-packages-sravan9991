# netflixExplorer <img src="man/figures/logo.png" align="right" height="138" alt="" />

<!-- badges: start -->
[![R-CMD-check](https://img.shields.io/badge/R--CMD--check-passing-brightgreen.svg)](https://github.com/ETC5523-2025/assignment-4-packages-and-shiny-apps-Sravan9991)
[![pkgdown](https://img.shields.io/badge/pkgdown-documentation-blue.svg)](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->
<!-- badges: start -->
[![Website](https://img.shields.io/badge/website-live-blue)](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/)
<!-- badges: end -->

## Documentation
https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/

## Overview

**netflixExplorer** is an R package that provides an interactive Shiny application to explore the Netflix Movies & TV Shows dataset. This package was developed as part of the ETC5523 Communicating with Data course at Monash University.

The package allows users to:

- Explore trends in Netflix content over time
- Analyze content distribution across countries
- Visualize ratings and genres interactively
- Filter and search through the dataset dynamically
- Discover insights from Netflix's content library

## Installation

You can install the development version from GitHub:
```r
# Install remotes if you haven't already
install.packages("remotes")

# Install netflixExplorer
remotes::install_github("ETC5523-2025/assignment-4-packages-and-shiny-apps-Sravan9991")
```

## Quick Start

Launch the interactive Shiny app:
```r
library(netflixExplorer)

# Launch the Netflix Explorer app
launch_app()
```

## Features

### Interactive Shiny Application

The package includes a fully-featured Shiny app with:

- **Interactive Filters**: Select by type (Movie/TV Show), year, country, and rating
- **Dynamic Visualizations**: Charts update based on your selections
- **Data Exploration**: Browse and search the complete Netflix dataset
- **Insights Panel**: Discover key trends and patterns

### Clean Dataset

Access the cleaned Netflix dataset directly:
```r
library(netflixExplorer)

# Load the Netflix data
data("netflix_data", package = "netflixExplorer")

# View the structure
str(netflix_data)
```

## Documentation

Full documentation is available at: **https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/**

### Vignettes

- [Getting Started with Netflix Explorer](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/articles/getting-started.html)
- [Understanding the Netflix Data](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/articles/data-overview.html)

### Function Reference

See the [Reference](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/reference/index.html) page for detailed documentation of all functions.

## Dataset Information

The Netflix dataset includes information about:

- Movies and TV Shows available on Netflix
- Release years, countries, and ratings
- Cast, directors, and descriptions
- Content added to Netflix over time

**Source**: [Netflix Movies and TV Shows Dataset](https://www.kaggle.com/datasets/shivamb/netflix-shows)

## Example Usage
```r
library(netflixExplorer)
library(dplyr)
library(ggplot2)

# Load the data
data("netflix_data", package = "netflixExplorer")

# Analyze content by type
netflix_data %>%
  count(type) %>%
  ggplot(aes(x = type, y = n, fill = type)) +
  geom_col() +
  labs(title = "Netflix Content Distribution",
       x = "Content Type",
       y = "Count")

# Or launch the interactive app for more exploration
launch_app()
```

## Project Structure
```
netflixExplorer/
├── R/                    # R functions
│   ├── launch_app.R     # Function to launch Shiny app
│   └── ...              # Other helper functions
├── inst/
│   └── shinyapp/        # Shiny app files
│       ├── app.R
│       └── ...
├── data/                # R data files (.rda)
├── data-raw/            # Raw data and cleaning scripts
├── man/                 # Documentation files
├── vignettes/           # Package vignettes
├── _pkgdown.yml         # pkgdown configuration
└── DESCRIPTION          # Package metadata
```

## Author

**Sravan** (Student ID: 9991)  
Monash University  
ETC5523 - Communicating with Data

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Dataset provided by [Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- Developed as part of ETC5523 Assignment 4
- Built with [Shiny](https://shiny.rstudio.com/), [pkgdown](https://pkgdown.r-lib.org/), and 

---

**Need Help?** Check out the [documentation](https://ETC5523-2025.github.io/assignment-4-packages-and-shiny-apps-Sravan9991/) or open an [issue](https://github.com/ETC5523-2025/assignment-4-packages-and-shiny-apps-Sravan9991/issues).
