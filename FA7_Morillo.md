FA7_Morillo
================
MORILLO, JADE MARCO S.
2024-02-29

## 1

``` r
lambda <- 4

prob_a <- pexp(0.25, rate = lambda)
prob_b <- 1 - pexp(0.5, rate = lambda)
prob_c <- pexp(1, rate = lambda) - pexp(0.25, rate = lambda)

cat("a. P(T <= 0.25):", prob_a, "\n")
```

    ## a. P(T <= 0.25): 0.6321206

``` r
cat("b. P(T > 0.5):", prob_b, "\n")
```

    ## b. P(T > 0.5): 0.1353353

``` r
cat("c. P(0.25 < T < 1):", prob_c, "\n")
```

    ## c. P(0.25 < T < 1): 0.3495638

## 3

``` r
lambda <- 2

prob_a <- 1 - ppois(2,lambda)
prob_b <- 1 - pexp(0.5, rate = lambda/60)
prob_c <- pexp(0.5, rate = lambda/60)
prob_d <- 1 - pexp(0.5, rate = lambda/60)

cat("a. Probability of more than two jobs in a minute:", prob_a, "\n")
```

    ## a. Probability of more than two jobs in a minute: 0.3233236

``` r
cat("b. Probability of at least 30 seconds between jobs:", prob_b, "\n")
```

    ## b. Probability of at least 30 seconds between jobs: 0.9834715

``` r
cat("c. Probability of less than 30 seconds between jobs:", prob_c, "\n")
```

    ## c. Probability of less than 30 seconds between jobs: 0.01652855

``` r
cat("d. Probability of a job in the next 30 seconds, given no jobs in the last 30 seconds:", prob_d, "\n")
```

    ## d. Probability of a job in the next 30 seconds, given no jobs in the last 30 seconds: 0.9834715

## 7

``` r
lambda <- 15

time_interval_a <- 10 / 60
prob_no_visit_10_minutes <- pexp(time_interval_a, rate = lambda / 60)
prob_a <- 1 - prob_no_visit_10_minutes
prob_b <- ppois(8, lambda)
time_interval_c <- 15 / 60
prob_visit_in_next_15_minutes <- 1 - pexp(time_interval_c, rate = lambda / 60)
prob_c <- prob_visit_in_next_15_minutes
top_quartile <- qpois(0.75, lambda, lower.tail = FALSE)
prob_d <- top_quartile

cat("a. Probability that at least 10 minutes will elapse without a visit:", prob_a, "\n")
```

    ## a. Probability that at least 10 minutes will elapse without a visit: 0.9591895

``` r
cat("b. Probability that in any hour, there will be less than 8 visits:", prob_b, "\n")
```

    ## b. Probability that in any hour, there will be less than 8 visits: 0.03744649

``` r
cat("c. Probability that a visit will occur in the next 15 minutes given that 15 minutes have elapsed:", prob_c, "\n")
```

    ## c. Probability that a visit will occur in the next 15 minutes given that 15 minutes have elapsed: 0.9394131

``` r
cat("d. Top quartile (75th percentile) of the distribution (number of visits):", prob_d, "\n")
```

    ## d. Top quartile (75th percentile) of the distribution (number of visits): 12
