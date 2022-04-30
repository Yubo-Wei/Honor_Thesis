rm(list = ls())
pacman::p_load(tidyverse, #data cleaning
               janitor, # for clean_names
               readxl,
               stargazer,
               here,
               reshape2,
               kableExtra) 
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
source("stargazer.r")

cv_data <- read_excel("cvdata.xlsx") %>%
  mutate(honors = ifelse(is.na(honors), 0, 1),
         ra = ifelse(is.na(predoc), 0, 1),
         international = ifelse(is.na(international), 0, 1),
         job = ifelse(is.na(job), 0, 1),
         masters = ifelse(is.na(master), 0, 1),
         female = ifelse(gender == "f", 1, 0),
         econ = ifelse(major1 == "econ"|major2 == "econ"|minor1 == "econ"|
                         minor2 == "econ"|major1 == "finance"|major2 =="finance"|
                         major1 =="commerce"|major2 == "commerce"|major1 == "business administration"|
                         major2 == "business administration", 1, 0),
         econ = ifelse(is.na(econ), 0, 1),
         masterecon = ifelse(mastermajor == "econ", 1, 0),
         masterecon = ifelse(is.na(masterecon), 0, masterecon),
         econ = ifelse(masterecon | econ, 1,0), # econ background both master and undergrad
         math = ifelse(major1 == "math"|major2 == "math"|minor1=="math"|minor2=="math"|
                         major1 == "stats"|major2 == "stats"|minor1=="stats"|minor2=="stats", 1, 0),
         math = ifelse(is.na(math), 0, 1),
         mastermath = ifelse(mastermajor == "math"|mastermajor=="stats", 1, 0),
         mastermath = ifelse(is.na(mastermath), 0, mastermath),
         math = ifelse(mastermath | math, 1,0), # math background
         
         econmath = ifelse(econ == 1 & math == 1, 1, 0), # both math and econ
         other_major = ifelse(econ == 0 & math == 0, 1, 0),
         ranking = 1,
         ugranking = 0,
         rank_tier = "", # for graphing
         new_rank_tier = "", # for table 4
         region_western_eu = 0,
         region_eastern_eu = 0,
         region_south_asia = 0,
         region_east_asia = 0,
         region_latin_america = 0,
         liberal_art = ifelse(undergrad %in% c("williams college", "amherst college","mount holyoke college",
                                               "dartmouth college","wellesley college","reed college",
                                               "carleton college","vassar college","new college of florida",
                                               "ramapo college of new jersey","college of william and mary",
                                               "oberlin college","ranklin w olin college of engineering",
                                               "davidson college", "union college","macalester college",
                                               "cuny hunter college","bowdoin college","beloit college","rhodes college",
                                               "grinnell college", "wesleyan university", "colgate university","swarthmore college",
                                               "franklin w olin college of engineering","st mary's college of maryland"), 1, 0),
         school_of_economics = ifelse(undergrad %in% c("new economics school","Getulio Vargas Foundation", "bocconi university",
                                                       "higher school of economics", "fae business school", "fgv"), 1, 0))

source("other_ranking.R")
source("region.R")
write.csv(cv_data, "cv_data.csv")
# Figure 1  Number of PhD candidates by Program Rankings

for(i in 1:nrow(cv_data)){
  if(cv_data$ranking[i] <= 5){
    cv_data$rank_tier[i] <- " 1-5"
  }else if(cv_data$ranking[i] > 5 & cv_data$ranking[i] <= 10){
    cv_data$rank_tier[i] <- " 6-10"
  }else if(cv_data$ranking[i] > 10 & cv_data$ranking[i] <= 15){
    cv_data$rank_tier[i] <- "11-15"
  }else if(cv_data$ranking[i] > 15 & cv_data$ranking[i] <= 20){
    cv_data$rank_tier[i] <- "16-20"
  }else if(cv_data$ranking[i] > 20 & cv_data$ranking[i] <= 25){
    cv_data$rank_tier[i] <- "21-25"
  }else if(cv_data$ranking[i] > 25 & cv_data$ranking[i] <= 30){
    cv_data$rank_tier[i] <- "26-30"
  }else if(cv_data$ranking[i] > 30 & cv_data$ranking[i] <= 35){
    cv_data$rank_tier[i] <- "31-35"
  }else if(cv_data$ranking[i] > 35 & cv_data$ranking[i] <= 40){
    cv_data$rank_tier[i] <- "36-40"
  }else if(cv_data$ranking[i] > 40 & cv_data$ranking[i] <= 45){
    cv_data$rank_tier[i] <- "41-45"
  }else if(cv_data$ranking[i] > 45 & cv_data$ranking[i] <= 50){
    cv_data$rank_tier[i] <- "46-50"
  }
}
figure1 <- tibble(Rank = (c(" 1-5"," 6-10","11-15","16-20","21-25", "26-30","31-35","36-40","41-45","46-50")),
              Count = c(122,65,91,52,83,83,18,30,33,26),
              Cum = cumsum(Count)/sum(Count))
ggplot(data = figure1) + 
  geom_bar(aes(x = Rank, y = Count),stat = "identity",width = 0.7,fill = '#003366', color = '#add8e6',alpha=0.95)+
  theme_light()
ggsave(filename = file.path("Figures","figure1.png"))

# Table 1 In STATA Descriptive statistics American VS International 

# Figure 2 Percentage of international candidates by Program Rankings
figure1_2 <- cv_data %>% 
  group_by(rank_tier) %>%
  summarise(international = mean(international))
ggplot(data = figure1_2) + 
  geom_line(aes(x = rank_tier, y = international, group = 1), color ="red")+
  theme_light() +
  labs(x = "Rank", y = "Percentage of International Candidates ") +
  ylim(0, 1)
ggsave(filename = file.path("Figures","figure1_2.png"))
# Table 2 Economic Schools and Liberal Arts Colleges.# In STATA

# Table 3 Sources of top 50 U.S. economics Ph.D.s World Wide

table3 <- cv_data %>% 
  group_by(undergrad) %>%
  summarise(Number_of_candidates = n()) %>%
  arrange(desc(Number_of_candidates)) %>%
  head(10) %>%
  mutate(Country = c("China", "USA", "Italy", "Russia",
                     "Mexico", "China", "USA","India","China",
                     "China"), .before = "undergrad")
kable(table3,format = "latex",
      caption = "Sources of top 50 U.S. economics Ph.D.s") %>%  
  kable_styling(bootstrap_options = "striped",  font_size = 8, latex_options = "HOLD_position")%>% 
  row_spec(0, bold = T, color = "black") %>% 
  save_kable(paste0(here(),"/2021_data/latex/table/table3.tex"))

# Table 4 Sources of top 10 U.S. economics Ph.D.s World Wide

table4 <- cv_data %>% 
  filter(new_rank_tier == " 1-10") %>%
  group_by(undergrad) %>%
  summarise(Number_of_candidates = n()) %>%
  arrange(desc(Number_of_candidates)) %>%
  head(10) %>%
  mutate(Country = c("USA", "China", "UK", "USA",
                     "Italy", "USA", "USA","Russia","USA",
                     "USA"), .before = "undergrad")
kable(table4,format = "latex",
      caption = "Sources of top 50 U.S. economics Ph.D.s") %>%  
  kable_styling(bootstrap_options = "striped",  font_size = 8, latex_options = "HOLD_position")%>% 
  row_spec(0, bold = T, color = "black") %>% 
  save_kable(paste0(here(),"/2021_data/latex/table/table4.tex"))

# Table 5 by region.
# new rank_tier 
cv_data$new_rank_tier[cv_data$rank_tier == " 1-5" | cv_data$rank_tier == " 6-10"] <- " 1-10"
cv_data$new_rank_tier[cv_data$rank_tier == "11-15" | cv_data$rank_tier == "16-20"] <- "11-20"
cv_data$new_rank_tier[cv_data$rank_tier == "21-25" | cv_data$rank_tier == "26-30"] <- "21-30"
cv_data$new_rank_tier[cv_data$rank_tier == "31-35" | cv_data$rank_tier == "36-40"] <- "31-40"
cv_data$new_rank_tier[cv_data$rank_tier == "41-45" | cv_data$rank_tier == "46-50" ] <- "41-50"
temp <- cv_data %>% pivot_longer(cols = starts_with("region_"), names_to = "region", values_to = "value")
a <- temp %>% filter(value == 1)
table6 <- a %>% filter(region != "region_other") %>% 
  group_by(region) %>%
  summarise(obeservations = n(),
    "Ph.D. Rankings" = mean(ranking, na.rm = T),
            "Undergrad Rankings" = mean(ugranking, na.rm = T),
            "Female" = mean(female, na.rm = T),
            "Master Degree" = mean(masters, na.rm = T))
kable(table6,format = "latex",
      caption = "Characteristics of Different Regions.") %>%  
  kable_styling(bootstrap_options = "striped",  font_size = 8, latex_options = "HOLD_position")%>% 
  row_spec(0, bold = T, color = "black") %>% 
  save_kable(paste0(here(),"/2021_data/latex/table/table5.tex"))

# Figure 3 Percentage of Candidates by Regions Along with the Program Ranking
figure3 <- a %>% 
  group_by(rank_tier) %>%
  summarise(obeservations = n(),"Western Europe" = sum(region == "region_western_eu")/obeservations, "Eastern Europe" = sum(region == "region_eastern_eu")/obeservations,
            "East Asia" = sum(region == "region_east_asia")/obeservations, "South Asia" = sum(region == "region_south_asia")/obeservations,
            "Latin America" = sum(region == "region_latin_america")/obeservations, "Middle East" = sum(region == "region_middle_east")/obeservations) %>%
  select(-obeservations)

b <- figure3 %>% pivot_longer(!rank_tier, names_to = "region", values_to = "percent")
ggplot(data = b) + 
  geom_line(aes(x = rank_tier, y = percent,color = region, group = region))+
  theme_light() +
  labs(x = "Rank", y = "Percentage of Candidates") +
  ylim(0, 1)
ggsave(filename = file.path("Figures","figure3.png"))







# Figure 2 Is there a strong sense that top schools are drawing relatively small number of schools?
# # duplication rate
# 
# figure2_1 <- cv_data %>% group_by(rank_tier) %>%
#   mutate(duplication_rate = length(undergrad[duplicated(undergrad)])/length(undergrad))  %>%
#   summarise(average_duplication_rate = mean(duplication_rate), Type = "Undergraduate Only")
# figure2_2 <- cv_data %>% 
#   mutate(last_school_before_phd = ifelse(is.na(master), undergrad, master)) %>%
#   group_by(rank_tier) %>%
#   mutate(duplication_rate = length(last_school_before_phd[duplicated(last_school_before_phd)])/length(last_school_before_phd)) %>%
#   summarise(average_duplication_rate = mean(duplication_rate), Type = "Last School Before Ph.D.")
# figure2 <- rbind(figure2_1, figure2_2)
# 
# ggplot(data = figure2) + 
#   geom_line(aes(x = rank_tier, y = average_duplication_rate, color = Type, group = Type, linetype = Type))+
#   theme_light() +
#   labs(x = "Rank", y = "Concentration Ratio") + 
#   geom_vline(xintercept= "26-30", linetype = "dashed", color = "blue") +
#   geom_segment(aes(x = 6.5, y = 0.3, xend = 7.5, yend = 0.26),size = 0.3, color = "blue",
#                arrow = arrow(length = unit(0.7, "cm"))) + 
#   geom_text(aes(x=8, y=0.35, label="The number of Ph.D. candidates also declines"), colour="blue",size = 3)
#   
#   
# ggsave(filename = file.path("Figures","figure2.png"))
# 
# b = a %>% filter(rank_tier == "1-5")
# a = cv_data %>% group_by(rank_tier) %>%
#   mutate(last_school_before_phd = ifelse(is.na(master), undergrad, master)) %>%
#   mutate(duplication_rate = length(last_school_before_phd[duplicated(last_school_before_phd)])/length(last_school_before_phd))
# length(b$last_school_before_phd[duplicated(b$last_school_before_phd)])/length(b$last_school_before_phd)
# 
# cv_data %>%
#   filter(grad=="Harvard University") %>%
#   mutate(last_school_before_phd = ifelse(is.na(master), undergrad, master)) %>%
#   group_by(undergrad) %>%
#   summarise(number=n()) %>%
#   arrange(desc(number))
# # 33 PhD candidates are from 26 different undergraduate schools.
# 
# cv_data %>%
#   group_by(rank_tier) %>%
#   summarise(mean(econ))
# 


