

cv_data <- cv_data %>% 
  mutate(region_western_eu = ifelse(undergrad %in% c("ecole polytechnique","university of cambridge","bocconi university","universite paris iv sorbonne","pompeu fabra university",
                                                     "university of helsinki","universite paris pantheon sorbonne","university of bonn","university of mannheim","university of naples federico",
                                                     "university of oxford","university of oslo","university of heidelberg","maastricht university","lmu munchen",
                                                     "university of konstanz","university of genoa","university of zurich","university of bologna","university of pisa",
                                                     "university of st andrews","trinity college dublin", "universitat munchen","london school of economics and political science",
                                                     "ecole normale superieure","university of cagliari","university of innsbruck","karlsruhe institute of technology",
                                                     "university of warwick","university magdeburg","university of turin","universita cattolica di milano","vienna university of economics and business",
                                                     "ecole centrale paris","university of bristol","budapest university of technology and economics","national technical university of athens",
                                                     "free university berlin","london school of economics","university of vienna","university of geneva","eotvos lorand university",
                                                     "corvinus university of budapest","luiss guido carli"), 1, 0),
         region_eastern_eu = ifelse(undergrad %in% c("new economics school","saint petersburg state university","moscow institute of physics and technology","Simon Kuznetz Kharkiv National University of Economics",
                                                     "belarusian state university","higher school of economics","moscow state technical university","novosibirsk state university","lomonosov moscow state university",
                                                     ""), 1, 0),
         region_south_asia = ifelse(undergrad %in% c("mumbai university", "Universidad Católica Andrés Bello","indian institute of technology","st.xavier's college",
                                                     "delhi university","lahore university of management sciences","university of delhi",
                                                     "north south university","pes university","presidency college (india)","university of dhaka",
                                                     "anna university","university of calcutta"), 1, 0),
         region_east_asia = ifelse(undergrad %in% c("tsinghua university","peking university","university of tokyo","seoul national university","fudan",
                                                    "korea advanced institute of science and technology","national taiwan university","university of hongkong","yonsei university",
                                                    "korea university","sogang university","national university of singapore","renmin university of china",
                                                    "sungkyunkwan university","tongji university","shandong university","china university of political science and law",
                                                    "university of science and technology of china","central university of finance and economics","shanghai jiaotong university",
                                                    "southwestern university of finance and economics","dongbei university of finance and economics","university of korea",
                                                    "hongkong university of science and technology","handong global university","soochow university","nankai university",
                                                    "nankai university","national chengchi university","shanghai university of finance and economics","wuhan university",
                                                    "asia university","nanjing university","waseda university","hitotsubashi university","southeast university",
                                                    "sun yat sen university","chinese university of hongkong","zhejiang university","sichuan university","chongqing technology and business university",
                                                    "university of international business and economics","southwest jiaotong university","communication university of china",
                                                    "xiamen university","university of tsukuba"), 1, 0),
         
         region_latin_america = ifelse(undergrad %in% c("universidad de chile","Instituto Tecnológico Autónomo de México","universidad de los andes",
                                                        "universidad nacional mayor de san marcos","puc","universidad torcuato di tella","university of brasilia",
                                                        "pontificia universidad catolica de chile","universidad eafit","university of sao paulo","puc chile","universidad de buenos aires",
                                                        "federal university of vicosa","university of chile","universidad del pacifico",
                                                        "catholic university of santos","universidad de montevideo","puc rio","universidad autonoma de nuevo leon",
                                                        "autonomous university of baja california","universidad nacional de colombia","universidad catolica andres bello",
                                                        "universidad ort uruguay","pontificia universidad catolica de peru","university of buenos aires",
                                                        "universidade federal de pernambuco","federal university of rio de janeiro","fae business school","federal university of bahia",
                                                        "universidad del los andes","universidad de piura","universidad de costa rica","fgv","universidad del salvador","universidad mayor de san andres",
                                                        "federal university of minas gerais","universidad nacional de la plata",
                                                        "federal university of parana","universidad nacional de salta"), 1, 0),
         region_other = ifelse(undergrad %in% c("mcgill university", "university of sydney", "university of new south wales","university of melbourne","australian national university","simon fraser university",
                                                "wilfrid laurier university/university of waterloo","university of toronto","laval university","universidade de brasilia","universitat pompeu fabra"), 1, 0),
         
         
         region_middle_east = ifelse(undergrad %in% c("the hebrew university","bogazici university", "university of tehran",
                                                      "yazd university","zanjian university","allameh tabatabai","american university of beirut","national university of colombia",
                                                      "university of cyprus","amirkabir university of technology","sharif university of technology","bilkent university","ferdowsi university of mashhad",
                                                      "sabanci university","middle east technical university","tbilisi state university","yildiz technical university",
                                                      "yerevan state university"), 1, 0))
a <- cv_data %>%
  filter(international == 1) %>%
  filter(region_western_eu == 0 & region_eastern_eu == 0 & region_south_asia == 0
         & region_east_asia == 0 & region_latin_america == 0 & region_other == 0 &
           region_middle_east == 0)