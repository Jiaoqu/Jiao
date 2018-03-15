---
title: "Simon data"
author: "Jiao"
date: "2018Äê3ÔÂ15ÈÕ"
output: html_document
---

## set working directary
```{r, warning=FALSE}
setwd("D:/PhD/Experiment Data/Bachelor Students/Simon_feedback")
```
## read data
```{r, warning=FALSE}
sj <- read.delim("S. jacobaea_data.txt", header = TRUE)
sj
sj_insect <- read.delim("Bachelorproef_insectdensity_SJ.txt", header = TRUE)
sj_insect
```

## load library
```{r, warning=FALSE}
library(reshape)
library(tidyr)

```
## reshape data
```{r, warning=FALSE}
insect_res <- cast(sj_insect, Staal~Insect, value = 'Aantal')
insect_res
View(insect_res)

```