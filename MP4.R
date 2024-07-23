# Non-parametric Test
?SIGN.test
?wilcox.test
?kruskal.test
?friedman.test

# Normality Test
?shapiro.test

# Sign Test
# x,y = data, md = conjecture median, 
# alternative = "less" / "greater" / "two.sided" (default)


# Wilcoxon Test
# mu = 0 for no difference, paired = true / false
# exact = false (to not skip tied values)


# Kruskal-Wallis
# // Convert Table to Dataframe

# Sample Code
x <- c(15, 14, 1, 9, 0, 3, 3, 1, 10, 8, 6, 16, 21, 22, 3, 19, 16, 5, 23, 13) 
SIGN.test(x, md = 11) 

pen <- c(12,41,26,14,4,38,27,27,9,11, 17, 11 ,66 ,5, 14, 8, 35, 16, 25,17)
SIGN.test(pen, md = 25, alternative = "two.sided") 

x <- c(6,18, 5,4, 16, 13, 20, 9, 3)
y <- c(5, 16, 7,4, 18, 12, 14, 7, 1)
SIGN.test(x, y, md=0, alternative = "greater")

Species1 <- c(235, 225, 190, 188)
Species2 <- c(180, 169, 180, 185, 178, 182)
wilcox.test(Species1, Species2, mu=0, paired=FALSE, exact = FALSE)

Campaign <- c('Camp1','Camp1','Camp1','Camp1','Camp1', 'Camp2','Camp2','Camp2','Camp2','Camp2','Camp3','Camp3','Camp3','Camp3','Camp3')
Response <- c(0.33,0.29,0.21,0.32,0.25,0.28,0.41,0.34,0.39,0.27,0.21,0.30,0.26,0.33,0.31)
Advertise <- data.frame(Campaign,Response)
Advertise

library(ggpubr)
ggboxplot(Advertise, x = "Campaign", y = "Response",
          color = "Campaign", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("Camp1", "Camp2", "Camp3"),
          ylab = "Response", xlab ="Campaign")

shapiro.test(Advertise$Response)

kruskal.test(Response ~ Campaign, data = Advertise)

data <- data.frame(block = rep(1:6, each=3), Treatment = rep(c('T1', 'T2','T3'), times=6),
                   Values = c(3.2,3.1,2.4,2.8,3.0,1.7,4.5,5,3.9,
                              2.5,2.7,2.6,3.7,4.1,3.5,2.4,2.4,2.0))
data

friedman.test(y=data$Values, groups=data$Treatment, blocks = data$block)

#--------------------------------------------------------------------

# 1
pulseBF = c(75,81,74,75,70,74,82,64,79,83,73,82)
pulseAF = c(71,83,70,60,75,67,85,65,69,71,65,76)

wilcox.test(x = pulseBF, y = pulseAF, paired=TRUE, exact = FALSE, alternative="less")

# 2

battLife = c(214, 289, 263, 291, 240, 207, 277, 252, 285, 287, 250, 297, 268, 286, 211, 232, 282, 216, 223, 234, 219, 280, 239, 249, 250)
SIGN.test(battLife, md=250, alternative = "less")

# 5
phL = c("No","No","No","No","No","No","No","No","No","No",
           "Mi","Mi","Mi","Mi","Mi","Mi","Mi","Mi","Mi","Mi",
           "So","So","So","So","So","So","So","So","So","So")
phD = c(4.45,4.02,4.13,3.51,4.42,3.89,4.18,3.95,4.07,4.29,
           4.60,4.27,4.31,3.88,4.49,4.22,4.54,4.76,4.36,4.21,
           4.55,4.31,4.84,4.67,4.28,4.95,4.72,4.63,4.36,4.47)

phdata = data.frame(phL, phD)
phdata
kruskal.test(phD ~ phL, data = phdata)

# 6

Stim1 <- c(1,3,2,1,2,1,3,2)
Stim2 <- c(4,2,3,3,1,2,3,3)
wilcox.test(Stim1, Stim2, mu=0, paired=FALSE, exact = FALSE)

Stimulus <- c(1,3,2,1,2,1,3,2,4,2,3,3,1,2,3,3)
stim = data.frame(treatment = rep(c('Stim1','Stim2'), each=8)
                  ,value = Stimulus)
wilcox.test(stim$value ~ stim$treatment, mu=0, paired=FALSE, exact = FALSE, alternative="two.sided")

# 7

egg <- data.frame(Block = rep(1:5, each=3), 
                  Treatment = rep(c('Heal', 'Scra','Beat'), times=5),
                  Values = c(16,9,7,
                             16,7,8,
                             14,8,4,
                             15,16,9,
                             13,11,2)
                  )
friedman.test(y=egg$Values, groups=egg$Treatment, blocks = egg$Block)