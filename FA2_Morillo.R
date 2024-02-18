set.seed(123)
num_simulations <- 100

outcomes <- replicate(num_simulations, sample(c("H", "T"), 2, replace = TRUE))
counts <- table(apply(outcomes, 2, paste, collapse = ""))
relative_frequencies <- prop.table(counts)

cat("Outcome\t\tRelative Frequency")
cat("HH\t\t", ifelse("HH" %in% names(relative_frequencies), relative_frequencies["HH"], 0))
cat("HT\t\t", ifelse("HT" %in% names(relative_frequencies), relative_frequencies["HT"], 0))
cat("TH\t\t", ifelse("TH" %in% names(relative_frequencies), relative_frequencies["TH"], 0))
cat("TT\t\t", ifelse("TT" %in% names(relative_frequencies), relative_frequencies["TT"], 0))

set.seed(123)
num_simulations <- 600

outcomes <- sample(1:6, num_simulations, replace = TRUE)
counts <- table(outcomes)
relative_frequencies <- prop.table(counts)

cat("Outcome\t\tRelative Frequency\n")
for (number in 1:6) {
  cat(number, "\t\t", ifelse(number %in% names(relative_frequencies), relative_frequencies[number], 0), "\n")
}