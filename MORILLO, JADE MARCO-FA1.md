---
title: "FA1"
author: "MORILLO, JADE MARCO S."
date: "2024-02-01"
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

Is Pearson's approximate formula a reasonable approximation?
- It is a quick way to approximate skewness but could be inaccurate especially when there are only few data available.

```{Skew}
library(ggplot2)
library(moments)

results <- read.csv("C:\\Users\\Dindette\\OneDrive\\Documents\\results.csv", TRUE, ",")

mean <- sapply(results[2:5], mean, na.rm = TRUE)
median <- sapply(results[2:5], median, na.rm = TRUE)
sd <- sapply(results[2:5], sd, na.rm = TRUE)

3*(mean(results$arch1, na.rm = TRUE) - median(results$arch1, na.rm = TRUE))/sd(results$arch1, na.rm = TRUE)
skewness(results$arch1, na.rm = TRUE)

3*(mean(results$prog1, na.rm = TRUE) - median(results$prog1, na.rm = TRUE))/sd(results$prog1, na.rm = TRUE)
skewness(results$prog1, na.rm = TRUE)

3*(mean(results$arch2, na.rm = TRUE) - median(results$arch2, na.rm = TRUE))/sd(results$arch2, na.rm = TRUE)
skewness(results$arch2, na.rm = TRUE)

3*(mean(results$prog2, na.rm = TRUE) - median(results$prog2, na.rm = TRUE))/sd(results$prog2, na.rm = TRUE)
skewness(results$prog2, na.rm = TRUE)
```

```{Stem and Leaf and Boxplot}
marks <- c(80,54,81,92,99,96,76,50,95,94,1,75,61,69,66,96,57,98,86,91,74,55,96,95,68,95,59,86,79,96,78,57,98,87,51,84,54,93,96,74,100,69,99,61,85,66,51,19,91,72) 

females <- marks[1:25]
males <- marks[26:50]

cat("Stem-and-leaf display for females:\n")
stem(females, scale = 2)

cat("\nStem-and-leaf display for males:\n")
stem(males, scale = 2)

df <- data.frame(Gender = rep(c("Females", "Males"), each = 25),Marks = c(females, males))
ggplot(df, aes(x = Gender, y = Marks, fill = Gender)) + geom_boxplot() + labs(title = "Boxplot for Females and Males", y = "Marks") + scale_fill_manual(values = c("purple", "green"))
```

Discuss the advantages of this representation compared to the traditional histogram.
- In stem-and-leaf, exact values are shown and is much more direct and simple than the traditional histogram.

Discuss the findings.
- In general, the females have higher grades than male but has a noticeable low grade on the bottom of the plot. Meanwhile, the males have a wider range of scores.



