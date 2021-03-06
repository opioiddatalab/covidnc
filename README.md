# UNC Coronavirus Social Distancing Evaluation and Messaging in North Carolina

To support health authorities' public health messaging, we are generating demographically targeted messages on the importance of social distancing. The 5-step process envisioned is:

1. Demographic evaluation of social distancing
2. Initial Messsage Resonnance Testing
3. Develop Communication Assets
4. Field Test Prototype Messages
5. Full Rendering of Final Messages

----

# 1. Demographic evaluation of social distancing
*Conduct a county-level analysis of NC counties to identify intensity of social distancing.*<br>
Analyses by: Nabarun Dasgupta, Allison Lazard, Katherine Gora Combs<br>
<br>
We are using cell phone tower mobility data as a proxy for social distancing. [Data](https://github.com/descarteslabs/DL-COVID-19) are provided by Decartes Labs (Santa Fe, NM), based on [this methodology](https://www.descarteslabs.com/wp-content/uploads/2020/03/mobility-v097.pdf). An example analysis was published on March 23, 2020 in *The New York Times*. These data are aggregated at the county level, so while we can compare general demographics, we would ideally also have more stratified within-county data to construct profiles (see next step below).

## National Data
Based on a [national analysis conducted at UNC](https://opioiddatalab.github.io/covid/locationcovid.html), we found that counties that were the fastest to implement social distancing were healthier and wealthier. We conclude that economic considerations should be considered in social distancing messaging.<br>

> From 02-March to 20-March 2020, smartphone movement decreased by 35% (quintile range: 5%, 68%) in the US. There was considerable disparity in access to primary care: the lowest social distancing counties had 47.6 (95% CI: 45.2, 50.0) per 100,000, whereas the most social distancing counties had 72.3 (95% CI: 65.5, 72.3). Counties in the highest quintile of social distancing had: 51% higher mental health providers, 70% fewer uninsured, 13% higher influenza vaccination, 31% higher annual income, and 10% less income disparity, relative to the lowest quintile.<br>

![March 2 to March 20, 2020 social distancing, US](https://opioiddatalab.github.io/covidnc/figure1.png)

## NC County Analysis
In this county-level analysis we use data from cell phone tower mobility data as proxy for overall social distancing (Courtesy Decartes Labs), and Google location services data by type of location (e.g., work, grocery, transit, etc.). Additional data from socioeconomic and transportation sources are being added. [Click here](https://github.com/opioiddatalab/covidnc/blob/master/docs/datamethods.md) for methods, code, data, and codebook. We will first identify NC counties with lower social distancing intensity, measured as both: 1) change from baseline, and 2) total mobility. Adjustments for county-level confounders will also be considered. We will also generate county-level demographic profiles for lower social distancing areas. These profiles will be provided to Spectrum for analysis to refine profiles.
<br>
## NC sub-county demographic profiles
*Conduct a demographically stratified analysis to generate profiles*<br>
Based on the county-level analysis above, we will identify candidate profiles of low social distancing. These profiles will be provided to Spectrum for further information on behaviors of these groups *within* counties.<br>
<br>
The outputs from these analyses will be used to develop and test messages tailored to audience segmentation.<br>
<br>

## NC Maps
As a *proxy for trends in social distancing*, we can analyze changes in movement using location information from cell phones, usually including data from the last 2 days. These data are aggregated and anonymized, so we cannot identify any individuals.
<br>

**[Interactive NC cell tower mobility maps](https://public.tableau.com/profile/katherine.gora.combs4747#!/vizhome/SocialDistancinginNC-Updated413/Dashboard1)** from aggregated and anonymized data (Data courtesy of Descartes Labs, Santa Fe, NM)
<br>

See our [data, code, and methods](https://github.com/opioiddatalab/covidnc/blob/master/docs/datamethods.md)
<br>
![maps](https://opioiddatalab.github.io/covidnc/ncmobilitymaps.png)<br>
<br>
**[Interactive NC location maps](https://public.tableau.com/profile/katherine.gora.combs4747#!/vizhome/shared/CN3HH2ZQY) using Google Location Services**
<br>
See our [data, code, and methods](https://github.com/opioiddatalab/covidnc/blob/master/docs/datamethods.md)
<br>
![maps](https://github.com/opioiddatalab/covidnc/blob/master/docs/googlemobilitymaps.png)
<br>
### NC Timetrends
![prelimaryresults](https://opioiddatalab.github.io/covidnc/nc_mobility_change.png)<br>

### NC Rank Tables
Check out the [interactive tables](https://public.tableau.com/profile/katherine.gora.combs4747#!/vizhome/ComparingQuintilesbyCounty-Updated413/Dashboard2)
<br>
![table2](https://github.com/opioiddatalab/covidnc/blob/master/docs/ncmobilitytable.png)

# 2. Initial Messsage Resonnance Testing
*Use Amazon's Mechanical Turk (mTurk) to conduct rapid surveys in NC to test general messaging approaches.*<br>
These results are based on an mTurk survey fielded on April 8, 2020.<br>
<br>
![mTurk Results](https://opioiddatalab.github.io/covidnc/firstresultstable.png)

**Top Reasons to Social Distance**
1. I want to protect people who are vulnerable
2. Social distancing keeps my family safe
3. I want to protect the elderly
4. Social distancing keeps me safe
5. I don't want to give the virus to anyone
6. Social distancing lessens the overflow at hospitals
<br>Sub-group analyses reported similar results, with only notable differences for young participants, ages 18-24 (n=10). The top reason among participants ages 18-24 was “Social distancing keeps our healthcare workers safe.” This reason also resonated with Black/African American and rural participants. Additional reasons among young adults were “Social distancing will prevent my community from being at risk” and “I want to protect people who are vulnerable.
<br>

**Most Worrisome Effects of COVID-19**
1. Being in an Intensive Care Unit (ICU)
2. Being hospitalized
3. Breathing problems
Sub-group analyses reported similar results among key populations.
<br>

# 3. Develop Communication Assets
*Create demographically targeted protorype communications to encourage socail distancing.*<br>
We will generate test messages and visuals using creative teams at UNC, a professional illustrator in Durham, and corporate entertainment industry volunteers. For example, information on television viewing by demographic could be used to build a visual vocabulary and culturally relevant frames to target social distancing to demographic groups.
<br>

# 4. Field Test Prototype Messages
*Use mTurk to evaluate responses to social distancing prototypes.*<br>
Test saliency and resonnance of the prototypes, segmented by demographics.
<br>

# 5. Full Rendering of Final Messages
*Finalize social distancing assets based on field testing.*<br>
Output will be optimized based on dissemination channels, including resizing, formatting, etc. Social media, print flyers, and other formats will be considered.<br>

Final assets will be provided with open source licenses to allow for broad dissemination, reuse, remix permissions.<br>


