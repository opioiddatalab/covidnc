# Code and Dataset
[Stata code](https://github.com/opioiddatalab/covidnc/blob/master/NC_analysis.do) to extract and process datasets<br>
[Analytic dataset](https://github.com/opioiddatalab/covidnc/blob/master/data/nc_cell_tower_data_collapsed.csv)<br>
[Codebook](https://github.com/opioiddatalab/covidnc/blob/master/data/Codebook.txt)<br>

# Mobility Data
## Cell phone tower mobility data
Cell phone tower mobility data provided courtesy of [Descartes Labs](https://www.descarteslabs.com/mobility/). From their [Methods paper](https://arxiv.org/pdf/2003.14228.pdf): "We do not and will not use mobile device location data to identify individuals. All analysis we perform is statistically aggregated, removing the ability to characterize the behavior of any single device." The measurement uses the daily longest distance traveled  for 2.8 million mobile devices in North Carolina. This is summarized for each county as the median across all measurements starting and ending in that county. The median of these distances is plotted in the first map. In the second map, we compare the median difference in mobility from a baseline period of February 17 to March 07, 2020. To reduce noise,  each daily value is treated as a 3-day moving average; to account for weekly periodicity (e.g., drops in movement on weekends), only the most recent 3 weekdays are used. Sample size is reported as the number of observations 

## Google mobility data
Google [mobility data](https://www.google.com/covid19/mobility/) are extracted from PDF reports created with aggregated, anonymized sets of data from users who have turned on the Location History setting in Google apps and devices, which is off by default. The metric shows percent change in mobility relative to baseline. The baseline is the median value, for the corresponding day of the week, during the 5-week period Jan 3–Feb 6, 2020. No information is available on sample size.

# Explanatory Data
We have over 100 explanatory variables available to model the mobility data.
+ USDA [Rural-Urban Contiuum Codes](https://www.ers.usda.gov/data-products/rural-urban-continuum-codes.aspx)
+ RWJF County Health Ranking with dozens of health and socioeconomic indicators: [measurements](https://www.countyhealthrankings.org/sites/default/files/media/document/Trends%20documentation%202020.pdf) and [data dictionary](https://www.countyhealthrankings.org/sites/default/files/media/document/DataDictionary_2020_2.pdf)
+ [American Community Survey](https://data.census.gov/cedsci/table?q=DP02%3A%20SELECTED%20SOCIAL%20CHARACTERISTICS%20IN%20THE%20UNITED%20STATES&hidePreview=true&tid=ACSDP1Y2018.DP02&g=0400000US37.050000&moe=false) demographic, in
+ Agriculture data 
+ [Commuting flows (Table 2)](https://www.census.gov/data/tables/2015/demo/metro-micro/commuting-flows-2015.html) between counties


# Analysis

*We are looking for your suggestions on how to analyze the data, including what explanatory variables would be of interest. While we want to adjust for explanatory variables, we are careful not to draw causal conclusions with this analytic setup. We are interested in explantory modeling here.*

If you have suggestions, please describe them here as a contributor by editing this document. Please be aware that adding datasets takes time, so please only consider how much time your requests will take up. To make this most useful, please link to the datasets themselves as well as underlying data collection methodoloy and codebooks.

THANKS!
