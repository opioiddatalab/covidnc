cd "/Users/nabarun/Documents/GitHub/covid/"

// Import and save RUCC codes
clear
import excel "ruralurbancodes2013.xls", sheet("Rural-urban Continuum Code 2013") cellrange(A1:F3222) firstrow
rename FIPS fips
rename RUCC_2013 rucc
drop Description County_Name State
save rucc, replace

// Import cell tower mobility data
	clear
	import delimited "https://raw.githubusercontent.com/descarteslabs/DL-COVID-19/master/DL-us-mobility-daterow.csv"
	
	* Drop state aggregates
		drop if admin2==""
	
	* Limit to NC
		keep if admin1=="North Carolina"
			drop admin1 admin_level country_code
				rename admin2 county
	
	* Date format
		rename date dateoriginal
			gen date=date(dateoriginal, "YMD")
				format date %td
					order date, first
						drop dateoriginal
			
	save nc_mobility, replace
	
	* Note data start and end dates for graphs
		su date 
			local latest: disp %td r(max)
				di "`latest'"
			local earliest: disp %td r(min)
				di "`'earliest'"
			
	/*
	* Basic graphs
		la var m50 "Median daily distance traveled (km)"
		la var m50_index "Median % reduction in mobility since Feb 17, 2020"
		la var date "Dates: `earliest' to `latest'"
		line m50_index date, by(county)
			graph export "/Users/nabarun/Documents/GitHub/covidnc/docs/nc_mobility_km.png", as(png) name("Graph") replace
		line m50 date, by(county)
			graph export "/Users/nabarun/Documents/GitHub/covidnc/docs/nc_mobility_change.png", as(png) name("Graph") replace
*/

		* twoway lowess m50_index date, by(county)
		
	* Create last 3 day moving average of last 3 weekdays
		bysort county (date): egen weekdays=seq() if dow(date)!=0 & dow(date)!=6
			by county: egen lastweekday=max(weekdays)
				by county: egen last3_m50=mean(m50) if weekdays >= lastweekday-2 & weekdays!=.
				by county: egen last3_sample=total(samples) if weekdays >= lastweekday-2 & weekdays!=.
				by county: egen last3_pctchange=mean(m50_index) if weekdays >= lastweekday-2 & weekdays!=.

		collapse (max) last3_m50 last3_pctchange last3_sample date (sum) samples, by(county fips)
			la var last3_m50 "3-day moving average of median km traveled for last 3 weekdays"
			la var last3_sample "Number of cell trace sample during last 3 weekdays"
			la var last3_pctchange "Avg % change in median mobility since baseline (17Feb-07Mar) for last 3 weekdays"
			
	program define quintile
	
	xtile temp = trend, nq(5)
		gen iso5=.
		 replace iso5=1 if temp==5
			replace iso5=2 if temp==4
				replace iso5=3 if temp==3
					replace iso5=4 if temp==2
						replace iso5=5 if temp==1
							order iso5, a(trend)
								la var iso5 "Social Distancing: Lowest (1) to Highest (5)"
									drop temp
end

	export delimited using "/Users/nabarun/Documents/GitHub/covidnc/data/nc_cell_tower_data_collapsed.csv", delimiter(tab) replace

	frame put all, into(master)

// Import Google check-in data
	clear
	import delimited "/Users/nabarun/Documents/GitHub/covid/data/google_mobility-2020-03-29.csv"

	* keep NC
		keep if unit_name=="North Carolina"
	
	* Date format
		rename date dateoriginal
			gen date=date(dateoriginal, "YMD")
				format date %td
					order date, first
						drop dateoriginal
	
	* format to percent
		replace subunit_work=subunit_work*100
	
		hist  subunit_work
		
		rename subunit_name county
	
		keep county sub
	
	
