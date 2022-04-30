cv_data$ranking[which(cv_data$grad %in% c("Harvard University", "Massachusetts Institute of Technology", "Princeton University",
                                          "Stanford University", "University of California, Berkeley","Yale University"))] <- 1
cv_data$ranking[which(cv_data$grad %in% c("Northwestern University", "University of Chicago"))] <- 7
cv_data$ranking[which(cv_data$grad %in% c("Columbia University"))] <- 9
cv_data$ranking[which(cv_data$grad %in% c("University of Pennsylvania"))] <- 10
cv_data$ranking[which(cv_data$grad %in% c("New York University"))] <- 11
cv_data$ranking[which(cv_data$grad %in% c("University of California, Los Angeles","University of California-San Diego",
                                          "University of Michigan","University of Wisconsin"))] <- 12
cv_data$ranking[which(cv_data$grad %in% c("Cornell University","Duke University","University of Minnesota"))] <- 16
cv_data$ranking[which(cv_data$grad %in% c("Brown University"))] <- 19
cv_data$ranking[which(cv_data$grad %in% c("Carnegie Mellon University"))] <- 20
cv_data$ranking[which(cv_data$grad %in% c("University of Maryland-College Park","University of Rochester"))] <- 21
cv_data$ranking[which(cv_data$grad %in% c("Boston University","Johns Hopkins University"))] <- 23
cv_data$ranking[which(cv_data$grad %in% c("Boston College","Pennsylvania State University"))] <- 25
cv_data$ranking[which(cv_data$grad %in% c("University of Texas","Washington University in St. Louis"))] <- 27
cv_data$ranking[which(cv_data$grad %in% c("Michigan State University","Ohio State University","University of California-Davis",
                                          "University of Illinois at Urbana-Champaign", "University of North Carolina", "University of Virginia"))] <- 29
cv_data$ranking[which(cv_data$grad %in% c("University of Washington","Vanderbilt University"))] <- 35
cv_data$ranking[which(cv_data$grad %in% c("University of California, Santa Barbara","University of Southern California"))] <- 37
cv_data$ranking[which(cv_data$grad %in% c("Indiana University","Texas AM University","University of Pittsburgh"))] <- 39
cv_data$ranking[which(cv_data$grad %in% c("Arizona State University","Purdue","Rice University","University of Arizona",
                                          "University of Iowa"))] <- 42
cv_data$ranking[which(cv_data$grad %in% c("Rutgers","University of California, Irvine","University of Notre Dame"))] <- 47


cv_data$ugranking[which(cv_data$undergrad %in% c("university of michigan"))] <- 30
cv_data$ugranking[which(cv_data$undergrad %in% c("princeton"))] <- 11
cv_data$ugranking[which(cv_data$undergrad %in% c("harvard"))] <- 2
cv_data$ugranking[which(cv_data$undergrad %in% c("georgetown university"))] <- 51
cv_data$ugranking[which(cv_data$undergrad %in% c("mcgill university"))] <- 24
cv_data$ugranking[which(cv_data$undergrad %in% c("university of sydney"))] <- 45
cv_data$ugranking[which(cv_data$undergrad %in% c("mit"))] <- 1
cv_data$ugranking[which(cv_data$undergrad %in% c("brown"))] <- 49
cv_data$ugranking[which(cv_data$undergrad %in% c("ecole polytechnique"))] <- 40
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad de chile"))] <- 209
cv_data$ugranking[which(cv_data$undergrad %in% c("stanford"))] <- 3
cv_data$ugranking[which(cv_data$undergrad %in% c("yale"))] <- 15
cv_data$ugranking[which(cv_data$undergrad %in% c("mumbai university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("uchicago", "university of chicago"))] <- 10
cv_data$ugranking[which(cv_data$undergrad %in% c("cornell"))] <- 17
cv_data$ugranking[which(cv_data$undergrad %in% c("wisconsin madison"))] <- 54
cv_data$ugranking[which(cv_data$undergrad %in% c("Universidad Católica Andrés Bello"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("university of arizona"))] <- 216
cv_data$ugranking[which(cv_data$undergrad %in% c("university of cambridge"))] <- 3
cv_data$ugranking[which(cv_data$undergrad %in% c("saint petersburg state university"))] <- 256
cv_data$ugranking[which(cv_data$undergrad %in% c("ucd"))] <- 85
cv_data$ugranking[which(cv_data$undergrad %in% c("washington university in st.louis"))] <- 110
cv_data$ugranking[which(cv_data$undergrad %in% c("universite paris iv sorbonne"))] <- 222
cv_data$ugranking[which(cv_data$undergrad %in% c("university of new south wales"))] <- 46
cv_data$ugranking[which(cv_data$undergrad %in% c("pompeu fabra university"))] <- 295
cv_data$ugranking[which(cv_data$undergrad %in% c("Instituto Tecnológico Autónomo de México"))] <- 575
cv_data$ugranking[which(cv_data$undergrad %in% c("university of helsinki"))] <- 96
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad de los andes"))] <- 283
cv_data$ugranking[which(cv_data$undergrad %in% c("universite paris pantheon sorbonne"))] <- 240
cv_data$ugranking[which(cv_data$undergrad %in% c("bilkent university"))] <- 394
cv_data$ugranking[which(cv_data$undergrad %in% c("ecole normale superieure"))] <- 188
cv_data$ugranking[which(cv_data$undergrad %in% c("moscow institute of physics and technology"))] <- 435
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad nacional mayor de san marcos"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("indian institute of technology"))] <- 179
cv_data$ugranking[which(cv_data$undergrad %in% c("university of bonn"))] <- 210
cv_data$ugranking[which(cv_data$undergrad %in% c("penn state university"))] <- 101
cv_data$ugranking[which(cv_data$undergrad %in% c("puc"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of mannheim"))] <- 394
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad torcuato di tella"))] <- 625
cv_data$ugranking[which(cv_data$undergrad %in% c("university of naples federico"))] <- 445
cv_data$ugranking[which(cv_data$undergrad %in% c("university of oxford"))] <- 6
cv_data$ugranking[which(cv_data$undergrad %in% c("tsinghua university"))] <- 25
cv_data$ugranking[which(cv_data$undergrad %in% c("peking university"))] <- 41
cv_data$ugranking[which(cv_data$undergrad %in% c("university of oslo"))] <- 135
cv_data$ugranking[which(cv_data$undergrad %in% c("university of heidelberg"))] <- 66
cv_data$ugranking[which(cv_data$undergrad %in% c("marquette university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("the hebrew university"))] <- 148
cv_data$ugranking[which(cv_data$undergrad %in% c("usc"))] <- 130
cv_data$ugranking[which(cv_data$undergrad %in% c("university of rochester"))] <- 190
cv_data$ugranking[which(cv_data$undergrad %in% c("university of brasilia"))] <- 495
cv_data$ugranking[which(cv_data$undergrad %in% c("pontificia universidad catolica de chile"))] <- 170
cv_data$ugranking[which(cv_data$undergrad %in% c("university of tokyo"))] <- 39
cv_data$ugranking[which(cv_data$undergrad %in% c("university of notre dame"))] <- 195
cv_data$ugranking[which(cv_data$undergrad %in% c("maastricht university"))] <- 169
cv_data$ugranking[which(cv_data$undergrad %in% c("university of melbourne"))] <- 42
cv_data$ugranking[which(cv_data$undergrad %in% c("university of texas"))] <- 77
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad eafit"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of sao paulo"))] <- 143
cv_data$ugranking[which(cv_data$undergrad %in% c("puc chile"))] <- 170
cv_data$ugranking[which(cv_data$undergrad %in% c("ucb"))] <- 26
cv_data$ugranking[which(cv_data$undergrad %in% c("seoul national university"))] <- 36
cv_data$ugranking[which(cv_data$undergrad %in% c("georgetown university"))] <- 213
cv_data$ugranking[which(cv_data$undergrad %in% c("lmu munchen"))] <- 75
cv_data$ugranking[which(cv_data$undergrad %in% c("rutgers university"))] <- 269
cv_data$ugranking[which(cv_data$undergrad %in% c("university of konstanz"))] <- 319
cv_data$ugranking[which(cv_data$undergrad %in% c("fudan"))] <- 51
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad de buenos aires"))] <- 124
cv_data$ugranking[which(cv_data$undergrad %in% c("university of turin"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("federal university of vicosa"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("korea advanced institute of science and technology"))] <- 43
cv_data$ugranking[which(cv_data$undergrad %in% c("indiana university"))] <- 263
cv_data$ugranking[which(cv_data$undergrad %in% c("upenn"))] <- 18
cv_data$ugranking[which(cv_data$undergrad %in% c("belarusian state university"))] <- 425
cv_data$ugranking[which(cv_data$undergrad %in% c("university of zurich"))] <- 85
cv_data$ugranking[which(cv_data$undergrad %in% c("university of genoa"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("bogazici university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of ottawa"))] <- 284
cv_data$ugranking[which(cv_data$undergrad %in% c("university of bologna"))] <- 204
cv_data$ugranking[which(cv_data$undergrad %in% c("university of chile"))] <- 209
cv_data$ugranking[which(cv_data$undergrad %in% c("university of buenos aires"))] <- 124
cv_data$ugranking[which(cv_data$undergrad %in% c("rice"))] <- 106
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad del pacifico"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("brigham young university"))] <- 675
cv_data$ugranking[which(cv_data$undergrad %in% c("federal university of rio de janeiro"))] <- 323
cv_data$ugranking[which(cv_data$undergrad %in% c("national taiwan university"))] <- 70
cv_data$ugranking[which(cv_data$undergrad %in% c("armenian state university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of hongkong"))] <- 30
cv_data$ugranking[which(cv_data$undergrad %in% c("catholic university of santos"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("boston"))] <- 91
cv_data$ugranking[which(cv_data$undergrad %in% c("university of pisa"))] <- 367
cv_data$ugranking[which(cv_data$undergrad %in% c("st.xavier's college"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("Brandeis University"))] <- 381
cv_data$ugranking[which(cv_data$undergrad %in% c("university of st andrews"))] <- 68
cv_data$ugranking[which(cv_data$undergrad %in% c("ucsd"))] <- 44
cv_data$ugranking[which(cv_data$undergrad %in% c("yonsei university"))] <- 105
cv_data$ugranking[which(cv_data$undergrad %in% c("george washington university"))] <- 327
cv_data$ugranking[which(cv_data$undergrad %in% c("delhi university", "university of delhi"))] <- 485
cv_data$ugranking[which(cv_data$undergrad %in% c("korea university"))] <- 104
cv_data$ugranking[which(cv_data$undergrad %in% c("stony brook university"))] <- 372
cv_data$ugranking[which(cv_data$undergrad %in% c("sogang university"))] <- 425
cv_data$ugranking[which(cv_data$undergrad %in% c("ucsb"))] <- 129
cv_data$ugranking[which(cv_data$undergrad %in% c("federal university of bahia"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("northwestern university"))] <- 32
cv_data$ugranking[which(cv_data$undergrad %in% c("wilfrid laurier university/university of waterloo"))] <- 152
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad de montevideo"))] <- 625
cv_data$ugranking[which(cv_data$undergrad %in% c("universita cattolica di milano"))] <- 475
cv_data$ugranking[which(cv_data$undergrad %in% c("national university of singapore"))] <- 12
cv_data$ugranking[which(cv_data$undergrad %in% c("renmin university of china"))] <- 445
cv_data$ugranking[which(cv_data$undergrad %in% c("university of kentucky"))] <- 575
cv_data$ugranking[which(cv_data$undergrad %in% c("Universidad de Piura"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("sungkyunkwan university"))] <- 118
cv_data$ugranking[which(cv_data$undergrad %in% c("johns hopkins university"))] <- 16
cv_data$ugranking[which(cv_data$undergrad %in% c("puc rio"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of international business and economics"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("trinity college dublin"))] <- 78
cv_data$ugranking[which(cv_data$undergrad %in% c("ohio state university"))] <- 99
cv_data$ugranking[which(cv_data$undergrad %in% c("university of bristol"))] <- 37
cv_data$ugranking[which(cv_data$undergrad %in% c("sun yat sen university"))] <- 307
cv_data$ugranking[which(cv_data$undergrad %in% c("university of toronto"))] <- 34
cv_data$ugranking[which(cv_data$undergrad %in% c("university of geneva"))] <- 89
cv_data$ugranking[which(cv_data$undergrad %in% c("west virginia university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("southeast university"))] <- 465
cv_data$ugranking[which(cv_data$undergrad %in% c("nankai university"))] <- 277
cv_data$ugranking[which(cv_data$undergrad %in% c("nanjing university"))] <- 130
cv_data$ugranking[which(cv_data$undergrad %in% c("seattle university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("federal university of minas gerais"))] <- 575
cv_data$ugranking[which(cv_data$undergrad %in% c("wuhan university"))] <- 273
cv_data$ugranking[which(cv_data$undergrad %in% c("university of tehran"))] <- 575
cv_data$ugranking[which(cv_data$undergrad %in% c("london school of economics and political science"))] <- 35
cv_data$ugranking[which(cv_data$undergrad %in% c("ball state univeristy"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("tufts university"))] <- 252
cv_data$ugranking[which(cv_data$undergrad %in% c("university of washington"))] <- 65
cv_data$ugranking[which(cv_data$undergrad %in% c("university of illinois"))] <- 59
cv_data$ugranking[which(cv_data$undergrad %in% c("southwest jiaotong university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("shanghai university of finance and economics"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("hongkong university of science and technology"))] <- 28
cv_data$ugranking[which(cv_data$undergrad %in% c("arizona state university"))] <- 249
cv_data$ugranking[which(cv_data$undergrad %in% c("communication university of china"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("xiamen university"))] <- 405
cv_data$ugranking[which(cv_data$undergrad %in% c("zhejiang university"))] <- 110
cv_data$ugranking[which(cv_data$undergrad %in% c("Eötvös Loránd University"))] <- 625
cv_data$ugranking[which(cv_data$undergrad %in% c("columbia university"))] <- 22
cv_data$ugranking[which(cv_data$undergrad %in% c("southwest university of finance and economics"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("sharif university of technology"))] <- 475
cv_data$ugranking[which(cv_data$undergrad %in% c("university of miami"))] <- 280
cv_data$ugranking[which(cv_data$undergrad %in% c("university of vermont"))] <- 575
cv_data$ugranking[which(cv_data$undergrad %in% c("california state university nortbridge"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("novosibirsk state university"))] <- 317
cv_data$ugranking[which(cv_data$undergrad %in% c("auburn university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("truman state university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("portland state university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("national chengchi university"))] <- 675
cv_data$ugranking[which(cv_data$undergrad %in% c("presidency college (india)"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("syracuse university"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("asia university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("yildiz technical university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("ucla"))] <- 27
cv_data$ugranking[which(cv_data$undergrad %in% c("mercyhurst university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("tongji university"))] <- 345
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad de costa rica"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("sabanci university"))] <- 445
cv_data$ugranking[which(cv_data$undergrad %in% c("university of minnesota"))] <- 123
cv_data$ugranking[which(cv_data$undergrad %in% c("karlsruhe institute of technology"))] <- 93
cv_data$ugranking[which(cv_data$undergrad %in% c("university of maryland"))] <- 126
cv_data$ugranking[which(cv_data$undergrad %in% c("vellore institute of technology"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("Ivane Javakhishvili"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("hitotsubashi university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("chongqing technology and business university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("laval university"))] <- 324
cv_data$ugranking[which(cv_data$undergrad %in% c("university of bologna"))] <- 204
cv_data$ugranking[which(cv_data$undergrad %in% c("lomonosov moscow state university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("sichuan university"))] <- 495
cv_data$ugranking[which(cv_data$undergrad %in% c("anna university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of vienna"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("middle east technical university"))] <- 435
cv_data$ugranking[which(cv_data$undergrad %in% c("london school of economics"))] <- 35
cv_data$ugranking[which(cv_data$undergrad %in% c("university of dhaka"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("free university berlin"))] <- 119
cv_data$ugranking[which(cv_data$undergrad %in% c("duke university"))] <- 29
cv_data$ugranking[which(cv_data$undergrad %in% c("waseda university"))] <- 212
cv_data$ugranking[which(cv_data$undergrad %in% c("new york university"))] <- 53
cv_data$ugranking[which(cv_data$undergrad %in% c("carnegie mellon university"))] <- 62
cv_data$ugranking[which(cv_data$undergrad %in% c("Universidad Mayor de San Andrés "))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad del salvador"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("george mason university"))] <- 675
cv_data$ugranking[which(cv_data$undergrad %in% c("university of virginia"))] <- 172
cv_data$ugranking[which(cv_data$undergrad %in% c("chinese university of hongkong"))] <- 51
cv_data$ugranking[which(cv_data$undergrad %in% c("budapest university of technology and economics"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("university of tsukuba"))] <- 219
cv_data$ugranking[which(cv_data$undergrad %in% c("university of wisconsin"))] <- 54
cv_data$ugranking[which(cv_data$undergrad %in% c("luiss guido carli"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("pennsylvania state university"))] <- 101
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad nacional de salta"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("federal university of parana"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad nacional de la plata"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("universitat pompeu fabra"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("saint john university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("corvinus university of budapest"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("national technical university of athens"))] <- 376
cv_data$ugranking[which(cv_data$undergrad %in% c("yerevan state university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("eotvos lorand university"))] <- 701
cv_data$ugranking[which(cv_data$undergrad %in% c("brandeis university"))] <- 381
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad del los andes"))] <- 283
cv_data$ugranking[which(cv_data$undergrad %in% c("ecole centrale paris"))] <- 156
cv_data$ugranking[which(cv_data$undergrad %in% c("universidade de brasilia"))] <- 495
cv_data$ugranking[which(cv_data$undergrad %in% c("university of oregon"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("simon fraser university"))] <- 225
cv_data$ugranking[which(cv_data$undergrad %in% c("pontificia universidad catolica de peru"))] <- 495
cv_data$ugranking[which(cv_data$undergrad %in% c("university of warwick"))] <- 48
cv_data$ugranking[which(cv_data$undergrad %in% c("american university of beirut"))] <- 268
cv_data$ugranking[which(cv_data$undergrad %in% c("university of wyoming"))] <- 675
cv_data$ugranking[which(cv_data$undergrad %in% c("university of korea", "korea university"))] <- 104
cv_data$ugranking[which(cv_data$undergrad %in% c("michigan state university"))] <- 164
cv_data$ugranking[which(cv_data$undergrad %in% c("university of alabama"))] <- 625
cv_data$ugranking[which(cv_data$undergrad %in% c("university of oregon"))] <- 525
cv_data$ugranking[which(cv_data$undergrad %in% c("american university of beirut"))] <- 268
cv_data$ugranking[which(cv_data$undergrad %in% c("university of innsbruck"))] <- 295
cv_data$ugranking[which(cv_data$undergrad %in% c("university of science and technology of china"))] <- 113
cv_data$ugranking[which(cv_data$undergrad %in% c("rensselaer polytechnic institute"))] <- 348
cv_data$ugranking[which(cv_data$undergrad %in% c("university of pittsburgh"))] <- 133
cv_data$ugranking[which(cv_data$undergrad %in% c("purdue"))] <- 89
cv_data$ugranking[which(cv_data$undergrad %in% c("shanghai jiaotong university"))] <- 70
cv_data$ugranking[which(cv_data$undergrad %in% c("vanderbilt university"))] <- 216
cv_data$ugranking[which(cv_data$undergrad %in% c("university of calcutta"))] <- 625
cv_data$ugranking[which(cv_data$undergrad %in% c("universitat munchen"))] <- 75
cv_data$ugranking[which(cv_data$undergrad %in% c("shandong university"))] <- 575
cv_data$ugranking[which(cv_data$undergrad %in% c("universidad nacional de colombia"))] <- 290
cv_data$ugranking[which(cv_data$undergrad %in% c("moscow state technical university"))] <- 338
cv_data$ugranking[which(cv_data$undergrad %in% c("australian national university"))] <- 19
cv_data$ugranking[cv_data$ugranking == 0] <- NA
cv_data$ugranking[cv_data$ugranking == 701] <- NA
cv_data <- cv_data %>% mutate(unranked = ifelse(
  (is.na(ugranking)) & (liberal_art == 0) & (school_of_economics == 0), 1, 0
))

