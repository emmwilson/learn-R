library(BetaBit)
library(tidyverse)
library(rlang)
frequon()
data()
frequon(subject = "Re: Interested?", content = roses)
unique(roses)
roses_l <-  str_to_lower(str_sub(roses, 1))
freq <- table(factor(unlist(strsplit(roses_l, ""), use.names=FALSE), levels=letters))
frequon(subject = "Re: Frequencies", content = freq)
freq_df <- as.data.frame(freq) %>%
  arrange(desc(Freq))
English_letter <- as.data.frame(EnglishLetterFrequency)
English <- mutate(English_letter, letter = rownames(English_letter))
code <- cbind(freq_df, English)
rose_split <- str_split(roses_l, "") %>%
  as.data.frame() %>%
  rename(letter = c..l.........r....z....z....o.........y....l....x....p........)
rose_split[] <-   lapply(rose_split, as.character)
code_lookup <- code %>%
  select(Var1, letter)
trial <- tapply(code_lookup$letter, code_lookup$Var1, unique)
base2 <- data.frame(code = rose_split$letter,
                    decoded = (trial[rose_split$letter]))
frequon(subject = "Re: Transcription", content = base2)
