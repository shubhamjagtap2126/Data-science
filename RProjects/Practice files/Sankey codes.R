### sankeyNetwork
# install.packages("networkD3")
# http://christophergandrud.github.io/networkD3/
# https://github.com/d3/d3/blob/master/API.md#ordinal-scales

# 
# URL <- paste0(
#   "https://cdn.rawgit.com/christophergandrud/networkD3/",
#   "master/JSONdata/energy.json")
# Energy <- jsonlite::fromJSON(URL)
# # Plot
# networkD3::sankeyNetwork(Links = Energy$links, Nodes = Energy$nodes, Source = "source",
#                          Target = "target", Value = "value", NodeID = "name",
#                          units = "TWh", fontSize = 12, nodeWidth = 30)
# 


### sankeyNetwork with mahacareermitra all data (first.max.count)

# test <- cbind(data_info , first.max.check)
# test <- tbl_df(test)
# rm(data,data_info, data_subset, first.max.check)
colnames(test)
# rm(test)
# class(test$I_Agri[[1]])

# test %>%  filter(I_Commerce == 1) %>% group_by(.,I_Commerce) %>%  count()
# test %>%  filter(I_Commerce == 1) %>% select(6:12) %>% apply(.,2,sum)

#### for first preference sankey ####

l2 <- list(
Agri <- test %>%  filter(I_Agri == 1) %>% select(6:12) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Agri",length(rownames(.)))), 

Arts <- test %>%  filter(I_Arts == 1) %>% select(6:12) %>% select(-2) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Arts",length(rownames(.)))), 

Commerce <- test %>%  filter(I_Commerce == 1) %>% select(6:12) %>% select(-3) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Commerce",length(rownames(.)))), 

FineArts <- test %>%  filter(I_FineArts == 1) %>% select(6:12) %>% select(-4) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("FineArts",length(rownames(.)))), 

HealthScience <- test %>%  filter(I_HealthScience == 1) %>% select(6:12) %>% select(-5) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("HealthScience",length(rownames(.)))), 

Technical<- test %>%  filter(I_Technical == 1) %>% select(6:12) %>% select(-6) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Technical",length(rownames(.)))), 

UniformedServices <- test %>%  filter(I_UniformedServices == 1) %>% select(6:12) %>% select(-7) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("UniformedServices",length(rownames(.)))) 
)

rownames(UniformedServices) <- NULL

### DEVELOPING Nodes data
l2 <- data.frame(rbind(Agri,Arts,Commerce, FineArts, HealthScience, Technical , UniformedServices))
colnames(l2) <- c("value","target", "source")
l2$value <- as.numeric(as.character(l2$value))
l2$target <- gsub("I_","",l2[,'target'])
# class(l2$value)

### DEVELOPING Links data
l1 <- data.frame(unique(l2$target))
colnames(l1) <- c('name')
l1change <- cbind(l1, c(0:6))
l2change <- paste(l1change$name, rep("v1", length(l1change$name)), sep = "_")
l2change <- data.frame(l2change)
l2change <- cbind(l2change, c(7:13))

colnames(l1change)  <- c('name', 'code')
colnames(l2change)  <- c('name', 'code')
l1 <- rbind(l1change,l2change)


l2 <- left_join(l2,l1change,by = c("target"= "name"))
l1chg <- cbind(l1, c(7:13))
l1chg$code = NULL
colnames(l1chg)  <- c('name', 'code')
l2 <- left_join(l2,l1chg,by = c("source" = "name"))
l2$Source = NULL
colnames(l2) <- c("value","target","source","Target","Source")

e <- list(l1=l1,l2=l2)


# Plot for first preference sankey

networkD3::sankeyNetwork(Links = e$l2, Nodes = e$l1, Source = "Source",
                         Target = "Target", Value = "value", NodeID = "name",
                         units = "Number of students", fontSize = 12, nodeWidth = 40, 
                         )


#### For second preference sankey #########

# test1 <- cbind(data_info , first.max.check, second.max.check)
colnames(test1) # -> c
c[14:20] <- c("II_AgrII" ,"II_Arts" ,"II_Commerce" , "II_FIIneArts" ,"II_HealthScIIence" ,"II_TechnIIcal" ,"II_UnIIformedServIIces")

secondpref <- list(
Agri <- test1 %>%  filter(I_Agri == 1) %>% select(6,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Agri",length(rownames(.)))), 

Arts <- test1 %>%  filter(I_Arts == 1) %>% select(7,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Arts",length(rownames(.)))), 

Commerce <- test1 %>%  filter(I_Commerce == 1) %>% select(8,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Commerce",length(rownames(.)))), 

FineArts <- test1 %>%  filter(I_FineArts == 1) %>% select(9,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("FineArts",length(rownames(.)))), 


HealthScience <- test1 %>%  filter(I_HealthScience == 1) %>% select(10,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("HealthScience",length(rownames(.)))), 


Technical<- test1 %>%  filter(I_Technical == 1) %>% select(11,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("Technical",length(rownames(.)))), 


UniformedServices <- test1 %>%  filter(I_UniformedServices == 1) %>% select(12,14:20) %>% select(-1) %>% 
  apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep("UniformedServices",length(rownames(.)))))

l2 <- do.call(rbind, secondpref)
l2 <- tbl_df(l2)
rownames(l2) <- NULL
colnames(l2) <- NULL

# rm(Agri,Arts,Commerce,FineArts,HealthScience,Technical,UniformedServices)
# rm(data_info , first.max.check, second.max.check)

### DEVELOPING Nodes data as L2

colnames(l2) <- c("value","target", "source")
l2$value <- as.numeric(as.character(l2$value))
l2$target <- gsub("II_","",l2$target)
l2 <- l2 %>% filter(value != 0)
# "Agri" -> l2[l2$target == 'AgrII','target']
# "FineArts" -> l2[l2$target == 'FIIneArts','target']
# "HealthScience" -> l2[l2$target == 'HealthScIIence','target']
# "Technical" -> l2[l2$target == 'TechnIIcal','target']
# "UniformedServices" -> l2[l2$target == 'UnIIformedServIIces','target']
# class(l2$value)

### DEVELOPING Links data as L1

l1 <- data.frame(unique(l2$target))
colnames(l1) <- c('name')
l1change <- cbind(l1, c(0:6))
l2change <- paste(l1change$name, rep("v1", length(l1change$name)), sep = "_")
l2change <- data.frame(l2change)
l2change <- cbind(l2change, c(7:13))

colnames(l1change)  <- c('name', 'code')
colnames(l2change)  <- c('name', 'code')
l1 <- rbind(l1change,l2change)
rm(l1change,l2change)

l2 <- left_join(l2,l1change,by = c("target"= "name"))
l1chg <- cbind(l1, c(7:13))
l1chg$code = NULL
colnames(l1chg)  <- c('name', 'code')
l2 <- left_join(l2,l1chg,by = c("source" = "name"))
l2$Source = NULL
colnames(l2) <- c("value","target","source","Target","Source")
rm(l1chg)




# Plot for second preference sankey
l3 <- l2
l2 <- l2[l2$source == 'Agri',] # l3
e <- list(l1=l1,l2=l2)
networkD3::sankeyNetwork(Links = e$l2, Nodes = e$l1, Source = "Source",
                         Target = "Target", Value = "value", NodeID = "name",
                         units = "Number of students", fontSize = 12, nodeWidth = 40, 
)
my_color <- "d3.scaleOrdinal() .domain(["type_a", "type_b", "my_unique_group"]) .range(["#69b3a2", "steelblue", "grey"])"
