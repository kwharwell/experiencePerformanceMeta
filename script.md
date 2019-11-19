Experience and Performance Meta-Analysis
================
Kyle Harwell
November 19, 2019

``` r
# Analyze data ------------------------------------------------------------


# ____IRR for screening first search --------------------------------------

# "objective performance" + experience + years
qcMat1 <- bind_cols(alex1[, c(1,4)], sofia1[, c(1,4)])
kappa2(qcMat1[, c(2, 4)])
```

    ##  Cohen's Kappa for 2 Raters (Weights: unweighted)
    ## 
    ##  Subjects = 45 
    ##    Raters = 2 
    ##     Kappa = 0.603 
    ## 
    ##         z = 4.17 
    ##   p-value = 3.1e-05

``` r
# "objectively" + performance + experience + years
qcMat2 <- bind_cols(alex2[, c(1,4)], sofia2[, c(1,4)])
kappa2(qcMat2[, c(2, 4)])
```

    ##  Cohen's Kappa for 2 Raters (Weights: unweighted)
    ## 
    ##  Subjects = 124 
    ##    Raters = 2 
    ##     Kappa = 0.561 
    ## 
    ##         z = 6.46 
    ##   p-value = 1.05e-10

``` r
# objective + "of performance" + experience + years
qcMat3 <- bind_cols(alex3[, c(1,4)], sofia3[, c(1,4)])
kappa2(qcMat3[, c(2, 4)])
```

    ##  Cohen's Kappa for 2 Raters (Weights: unweighted)
    ## 
    ##  Subjects = 202 
    ##    Raters = 2 
    ##     Kappa = 0.701 
    ## 
    ##         z = 9.97 
    ##   p-value = 0
