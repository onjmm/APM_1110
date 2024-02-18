FA2_Morillo
================
MORILLO, JADE MARCO S.
2024-02-18

## R Markdown

2.  An experiment consists of tossing two fair coins. Use R to simulate
    this experiment 100 times and obtain the relative frequency of each
    possible outcome. Hence, estimate the probability of getting one
    head and one tail in any order.

``` r
set.seed(123)
num_simulations <- 100

outcomes <- replicate(num_simulations, sample(c("H", "T"), 2, replace = TRUE))
counts <- table(apply(outcomes, 2, paste, collapse = ""))
relative_frequencies <- prop.table(counts)

cat("Outcome\t\tRelative Frequency")
```

    ## Outcome      Relative Frequency

``` r
cat("HH\t\t", ifelse("HH" %in% names(relative_frequencies), relative_frequencies["HH"], 0))
```

    ## HH        0.23

``` r
cat("HT\t\t", ifelse("HT" %in% names(relative_frequencies), relative_frequencies["HT"], 0))
```

    ## HT        0.32

``` r
cat("TH\t\t", ifelse("TH" %in% names(relative_frequencies), relative_frequencies["TH"], 0))
```

    ## TH        0.25

``` r
cat("TT\t\t", ifelse("TT" %in% names(relative_frequencies), relative_frequencies["TT"], 0))
```

    ## TT        0.2

3.  An experiment consists of rolling a die. Use R to simulate this
    experiment 600 times and obtain the relative frequency of each
    possible outcome. Hence, estimate the probability of getting each of
    1, 2, 3, 4, 5, and 6.

<!-- -->

    ## Outcome      Relative Frequency

    ## 1         0.1766667 
    ## 2         0.17 
    ## 3         0.16 
    ## 4         0.1533333 
    ## 5         0.1666667 
    ## 6         0.1733333

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
