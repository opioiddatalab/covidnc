# UNC Coronavirus Social Distancing Evaluation and Messaging in North Carolina

# 1. Demographic evaluation of social distancing
*Conduct a county-level analysis of NC counties to identify intensity of social distancing.*
We are using cell phone tower mobility data as a proxy for social distancing. [Data](https://github.com/descarteslabs/DL-COVID-19) are provided by Decartes Labs (Santa Fe, NM), based on [this methodology](https://www.descarteslabs.com/wp-content/uploads/2020/03/mobility-v097.pdf). An example analysis was published on March 23, 2020 in *The New York Times*. These data are aggregated at the county level, so while we can compare general demographics, we would ideally also have more stratified within-county data to construct profiles (see next step below).

**Data Sources**
In this county-level analysis we will merge data from:
1. Cell phone mobility data (updated daily with a 2-day lag) as proxy for overall social distancing
2. Google changes in check-in data (Feb 16-March 29) by type of location (e.g., work, transit, etc.)
3. County demographic profiles from American Community Survey and Census and [RWJF County Health Rankings](https://www.countyhealthrankings.org/sites/default/files/media/document/DataDictionary_2020_2.pdf)
We are in the process of merging and creating the master dataset.

**Analysis plan**
We will first identify NC counties with lower social distancing intensity. 
We will generate 

*Conduct a demographically stratified analysis to generate profiles*
Based on the county-level analysis above, we will identify candidate profiles of low social distancing. These profiles will be provided to Spectrum for further information on behaviors of these groups *within* counties.

# 2. Messsage resonnance testing
