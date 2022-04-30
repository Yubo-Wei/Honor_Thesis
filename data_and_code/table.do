set more off
set varabbrev off
clear

global dir = "/Users/lee/Desktop/196A/2021_data"
import delimited "${dir}/cv_data",  clear

/* replace NAs */
replace ugranking = "" if ugranking == "NA"
destring ugranking, replace

/* label variables */
label variable female "Female"
label variable econ "Has a background in economics"
label variable masterecon "Has a master degree in economics"
label variable math "Has a background in math"
label variable mastermath "Has a master degree in economics"
label variable econmath "Has a background in economics and math"
label variable other_major "No background in math or economics"
label variable ra "Has full time RA experiences"
label variable job "Has professional experiences"
label variable masters "Has a previous graduate degree"
label variable honors "Has undergraduate honors"
label variable international "Undergraduate school is outside U.S."
label variable ugranking "Undergraduate institution ranking"
label variable ranking "PhD program ranking"
label variable unranked "Attended an unranked undergraduate institution"
label variable liberal_art "Attended an undergraduate liberal arts college"
label variable school_of_economics "Attended an undergraduate economics school"
label variable region_western_eu "Western Europe"
label variable region_eastern_eu "Eastern Europe"
label variable region_south_asia "South Asia"
label variable region_east_asia "East Asia"
label variable region_latin_america "Latin America"
label variable region_middle_east "Middle East"

/* table 1 Descriptive statistics American VS International */
estpost sum econ math econmath other_major honors ra job masters  ranking ugranking unranked female if international == 0
est sto m1

estpost sum econ math econmath other_major honors ra job masters ranking ugranking unranked female if international == 1
est sto m2

estpost sum econ math econmath other_major honors ra job masters ranking ugranking unranked female if international== 0|international==1
est sto m3

esttab m1 m2 m3 using "${dir}/latex/table/table1.tex", title("Descriptive Statistics") mtitles("American" "International" "Combined") label cell(mean(fmt(%9.2f)) sd(par fmt(%9.2f))) replace nonum

/* table 2 Descriptive statistics Liberal Arts colleges/economics schools */

estpost sum ra job masters ranking female if liberal_art == 1
est sto m1

estpost sum ra job masters ranking female if school_of_economics == 1
est sto m2

estpost sum ra job masters ranking female if unranked == 1
est sto m3

estpost sum ra job masters ranking female if liberal_art == 0 & school_of_economics == 0 & unranked == 0
est sto m4

esttab m1 m2 m3 m4 using "${dir}/latex/table/table2.tex", title("Undergraduate Institutions") mtitles("Liberal Arts" "Economics Schools" "Unranked Schools" "Ranked Schools") label cell(mean(fmt(%9.2f)) sd(par fmt(%9.2f))) replace nonum

 

/* table 6 Relationship between phd program rankings and pre-doctoral characteristics */

reg ranking ugranking econ math ra job masters region_western_eu region_eastern_eu region_south_asia region_east_asia region_latin_america region_middle_east female, r
est sto m1

reg ranking unranked liberal_art school_of_economics econ math ra job masters region_western_eu region_eastern_eu region_south_asia region_east_asia region_latin_america region_middle_east female,r
est sto m2

replace ugranking=0 if ugranking==.

reg ranking ugranking unranked liberal_art school_of_economics econ math ra job masters  region_western_eu region_eastern_eu region_south_asia region_east_asia region_latin_america region_middle_east female, r
est sto m3

esttab m1 m2 m3 using "${dir}/latex/table/table6.tex", replace title("PhD program rankings with pre-doctoral characteristics") label b(%9.3f) se(%9.3f) r2(%9.3f) nonum star(* 0.1 ** 0.05 *** 0.01)






