library('ggplot2')
library(tidyverse)
library(dplyr)
ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  stat_function(fun = dnorm) +
  theme_classic()+
  labs(title = "Standard Normal Distribution with Confidence Level at 95%",
       subtitle = "Plot by R",
       caption = "Data source: Random Generaized")+
  ylab(NULL)+
  geom_vline(xintercept=qnorm(.975), linetype="dashed", 
             color = "red", size=0.5)+
  geom_text(x=qnorm(.975), y=dnorm(qnorm(.975)), label="Confidence Level at 95%")+
  geom_vline(xintercept=qnorm(.025), linetype="dashed", 
             color = "red", size=0.5)+
  geom_text(x=qnorm(.025), y=dnorm(qnorm(.975)), label="Confidence Level at 95%")

?labs()
if(!require(car)){install.packages("car")}
if(!require(psych)){install.packages("psych")}
if(!require(multcomp)){install.packages("multcomp")}
if(!require(emmeans)){install.packages("emmeans")}
if(!require(FSA)){install.packages("FSA")}
if(!require(ggplot2)){install.packages("ggplot2")}
if(!require(phia)){install.packages("phia")}