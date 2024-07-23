?chisq.test

# For equal probabilities
card = c(13,8,18,11)
chisq.test(card)

# In case not equal probabilities
card = c(13,8,18,11)
cardp = c(0.25,0.25,0.25,0.25)
chisq.test(x=card, p=cardp)

# Independence/Homogeneity
email = matrix(c(160,240,140,460), ncol = 2, byrow = TRUE)
colnames(email) = c("With Images", "No Images")
rownames(email) = c("Spam", "No Spam")

email = as.table(email)
chisq.test(email)

# Independence 
website = matrix(c(399,261,284,263,393,531,502,
                   119,72,97,51,143,145,150,
                   39,50,20,15,41,97,86), 
                 ncol = 7, byrow = TRUE)
colnames(website) = c("M", "T", "W", "Th", "F", "Sa", "Su")
rownames(website) = c("None", "Single", "Multiple")

website = as.table(website)
chisq.test(website)


# Poisson Distribution
defect = c(32, 14, 8, 6)
table(defect)

defect_rep = rep(0:3, times=defect)
mean(defect_rep)

  # Checking for Goodness of Fit
defect_probs = dpois(0:3, lambda=mean(defect_rep))
table(defect_probs)

  # Adjusting New Table
temp = dpois(0:1, lambda=mean(defect_rep))
defect_probs_new = c(temp, 1-sum(temp))
chisq.test(x = c(32, 14, 14), 
           p = defect_probs_new)

# Homogeneity
mall = matrix(c(52,45,36,40,47,56), ncol = 3, byrow = TRUE)
colnames(mall) = c("A", "B", "C")
rownames(mall) = c("Will particiapte", "Will NOT participate")

mall = as.table(mall)
chisq.test(mall)