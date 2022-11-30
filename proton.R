library(proton)
library(tidyverse)
proton()
filter(employees, name == "John")
proton(action = "login", login="johnins")
n <- length(top1000passwords)
password_yes <- for (V1 in 1:n) {
  result <- proton(action = "login", login = "johnins", password = top1000passwords[V1])
  
  if(result == "Success! User is logged in!") {
    print(top1000passwords[V1])
  }
}
proton(action = "login", login = "johnins", password = "q1w2e3r4t5")
view(logs)
filter(employees, surname == "Pietraszko")
p_servers <- filter(logs, login == "slap")
p_servers_count <- p_servers %>%
  group_by(host) %>%
  summarise(
    n = n()
  )
view(p_servers_count)
proton(action = "server", host="194.29.178.16")
view(bash_history)
no_sp_strng <- unique(grep(pattern = " ", x = bash_history, value = TRUE, invert = TRUE))
proton(action = "login", login = "slap", password = no_sp_strng[6])
