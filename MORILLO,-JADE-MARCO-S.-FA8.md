FA8
================
MORILLO, JADE MARCO S.
2024-04-11

``` r
mean <- 0
variance <- 256
standard_deviation <- sqrt(variance)

prob_exceed_224 <- 1 - pnorm(224, mean, standard_deviation)
prob_between_186_224 <- pnorm(224, mean, standard_deviation) - pnorm(186, mean, standard_deviation)
microvoltage_25_percent <- qnorm(0.25, mean, standard_deviation)
prob_less_than_240_given_greater_than_210 <- pnorm(240, mean, standard_deviation) - pnorm(210, mean, standard_deviation)
lower_quartile <- qnorm(0.25, mean, standard_deviation)
upper_quartile <- qnorm(0.75, mean, standard_deviation)
interquartile_range <- upper_quartile - lower_quartile
prob_less_than_220_given_greater_than_210 <- (pnorm(220, mean, standard_deviation) - pnorm(210, mean, standard_deviation)) / (1 - pnorm(210, mean, standard_deviation))
prob_greater_than_220_given_greater_than_200 <- (pnorm(220, mean, standard_deviation) - pnorm(200, mean, standard_deviation)) / (1 - pnorm(200, mean, standard_deviation))

print(paste("a. Probability that the signal will exceed 224 microvolts:", prob_exceed_224))
```

    ## [1] "a. Probability that the signal will exceed 224 microvolts: 0"

``` r
print(paste("b. Probability that it will be between 186 and 224 microvolts:", prob_between_186_224))
```

    ## [1] "b. Probability that it will be between 186 and 224 microvolts: 0"

``` r
print(paste("c. Microvoltage below which 25% of the signals will be:", microvoltage_25_percent))
```

    ## [1] "c. Microvoltage below which 25% of the signals will be: -10.7918360031373"

``` r
print(paste("d. Probability that the signal will be less than 240 microvolts, given that it is larger than 210 microvolts:", prob_less_than_240_given_greater_than_210))
```

    ## [1] "d. Probability that the signal will be less than 240 microvolts, given that it is larger than 210 microvolts: 0"

``` r
print(paste("e. Estimate of the interquartile range:", interquartile_range))
```

    ## [1] "e. Estimate of the interquartile range: 21.5836720062746"

``` r
print(paste("f. Probability that the signal will be less than 220 microvolts, given that it is larger than 210 microvolts:", prob_less_than_220_given_greater_than_210))
```

    ## [1] "f. Probability that the signal will be less than 220 microvolts, given that it is larger than 210 microvolts: NaN"

``` r
print(paste("g. Probability that a received signal greater than 200 microvolts is greater than 220 microvolts:", prob_greater_than_220_given_greater_than_200))
```

    ## [1] "g. Probability that a received signal greater than 200 microvolts is greater than 220 microvolts: NaN"

``` r
mean_downtime <- 25
variance_downtime <- 144

standard_deviation_downtime <- sqrt(variance_downtime)

lower_bound_95 <- mean_downtime - 1.96 * standard_deviation_downtime
upper_bound_95 <- mean_downtime + 1.96 * standard_deviation_downtime

bound_10_percent <- qnorm(0.90, mean_downtime, standard_deviation_downtime)

print(paste("a. Bounds including 95% of downtime: [", round(lower_bound_95, 2), ",", round(upper_bound_95, 2), "] minutes"))
```

    ## [1] "a. Bounds including 95% of downtime: [ 1.48 , 48.52 ] minutes"

``` r
print(paste("b. Bound above which 10% of downtime is included:", round(bound_10_percent, 2), "minutes"))
```

    ## [1] "b. Bound above which 10% of downtime is included: 40.38 minutes"
