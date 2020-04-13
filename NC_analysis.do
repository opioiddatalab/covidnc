

cd "/Users/nabarun/Documents/GitHub/covidnc/data"

// Process Google app check-in data
clear
import delimited "/Users/nabarun/Documents/GitHub/covidnc/data/export-2020-04-05.csv" 
	
	drop v1
		
	* Convert proportions to percents 
	ds, has(type numeric)	
	foreach var of varlist `r(varlist)'  {
		replace `var'=`var'*100
		}

	* Format date and retain latest data
		rename subunit_name county
			order county, a(report_date)
				replace report_date=substr(report_date,1,10)
					gen googledate=date(report_date, "YMD")
						format googledate %td
							order googledate, first
								drop report_date
		
		su googledate 
			local latest: disp %td r(max)
				di "Keeping only records in Google mobility scrape from `latest'"
					keep if googledate==r(max)
		
	keep if unit_name=="North Carolina"
		drop unit*
		
	save ncgoogle_mobility, replace
		
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
				
	* Basic graphs
		la var m50 "Median daily distance traveled (km)"
		la var m50_index "Median % reduction in mobility since March 7, 2020"
		la var date "Dates: `earliest' to `latest'"
*		line m50_index date, by(county) note("Baseline: Feb 17 to March 7, 2020")
*			graph export "/Users/nabarun/Documents/GitHub/covidnc/docs/nc_mobility_km.png", as(png) name("Graph") replace
*		line m50 date, by(county) 
*			graph export "/Users/nabarun/Documents/GitHub/covidnc/docs/nc_mobility_change.png", as(png) name("Graph") replace

	* Short county name
			gen shortcounty=county
				replace shortcounty=regexr(shortcounty, " County", "")
			
		* twoway lowess m50_index date, by(county)
		
	* Create last 3 day moving average of last 3 weekdays
		bysort county (date): egen weekdays=seq() if dow(date)!=0 & dow(date)!=6
			by county: egen lastweekday=max(weekdays)
				by county: egen last3_m50=mean(m50) if weekdays >= lastweekday-2 & weekdays!=.
				by county: egen last3_sample=total(samples) if weekdays >= lastweekday-2 & weekdays!=.
				by county: egen last3_pctchange=mean(m50_index) if weekdays >= lastweekday-2 & weekdays!=.

		collapse (max) last3_m50 last3_pctchange last3_sample date (sum) samples, by(county fips)
			la var last3_m50 "Median km traveled (last 3 weekdays)"
			la var last3_sample "Number of cell trace samples during last 3 weekdays"
			la var last3_pctchange "% change in median mobility since baseline"
			note last3_pctchange: Baseline 17Feb to 07Mar; % change since then until last 3 weekdays
			
	* Merge in Google data
		merge 1:1 county using ncgoogle_mobility, keep(1 3) nogen

	* Sample size
		qui: su last3_sample
			local sample3=r(sum)
			di "Total samples in last 3 days: `sample3'" 
			di "Samples per day:"
			di `sample3'/3
			
		
	* Merge in RUCC data
	*	merge 1:1 fips using rucc, keep(1) nogen



/*		
** IN PROGRESS
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
)*/


export delimited using "/Users/nabarun/Documents/GitHub/covidnc/data/nc_cell_tower_data_collapsed.csv", delimiter(comma) replace


	
