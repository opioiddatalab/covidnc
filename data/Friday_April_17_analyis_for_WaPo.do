	clear
	import delimited "https://raw.githubusercontent.com/descarteslabs/DL-COVID-19/master/DL-us-mobility-daterow.csv", encoding(ISO-8859-9) stringcols(6) 

	* Drop state aggregates
		drop if admin2==""

	* Format date
		gen date2=date(date,"YMD")
			format date2 %td
				drop date
					rename date2 date
		
	* Note data start and end dates for graphs
		su date 
			local latest: disp %td r(max)
				di "`latest'"
			local earliest: disp %td r(min)
				di "`earliest'"
	
	* Rename variables for consistency
		rename admin1 state
		rename admin2 county
	
	* Create last 3 day moving average of last 3 weekdays
		bysort county (date): egen weekdays=seq() if dow(date)!=0 & dow(date)!=6
			by county: egen lastweekday=max(weekdays)
			by county: egen firstweekday=min(weekdays)
			
				by county: egen last3_m50=mean(m50) if weekdays >= lastweekday-2 & weekdays!=.
				by county: egen last3_sample=total(samples) if weekdays >= lastweekday-2 & weekdays!=.
				by county: egen last3_index=mean(m50_index) if weekdays >= lastweekday-2 & weekdays!=.
		

			keep if state=="North Carolina"
			
		*keep if date==mdy(4,17,2020) | date==mdy(4,10,2020) | date==mdy(4,3,2020)
		
	    *keep if date==mdy(4,18,2020) | date==mdy(4,11,2020) | date==mdy(4,4,2020)

		
		keep if date==mdy(4,17,2020) | date==mdy(4,10,2020) | date==mdy(4,18,2020) | date==mdy(4,11,2020)
		
		*line m50 date, by(county)
		
		keep county date m50

	reshape wide m50, i(county) j(date)

	rename m5022015 f1 
	rename m5022016 s1
	rename m5022022 f2
	rename m5022023 s2
	
	gen uptickfri=1
		replace uptickfri=0 if s2<fs
	gen upticksat=1
		replace upticksat=0 if s2<s1

		gen direction=uptick+upticksat
