# UNC Coronavirus Social Distancing Evaluation and Messaging in North Carolina

To support health authorities' public health messaging, we are generating demographically targeted messages on the importance of social distancing. The 5-step process envisioned is:

1. Demographic evaluation of social distancing
2. Initial Messsage Resonnance Testing
3. Develop Communication Assets
4. Field Test Prototype Messages
5. Full Rendering of Final Messages

----

# 1. Demographic evaluation of social distancing
*Conduct a county-level analysis of NC counties to identify intensity of social distancing.*
We are using cell phone tower mobility data as a proxy for social distancing. [Data](https://github.com/descarteslabs/DL-COVID-19) are provided by Decartes Labs (Santa Fe, NM), based on [this methodology](https://www.descarteslabs.com/wp-content/uploads/2020/03/mobility-v097.pdf). An example analysis was published on March 23, 2020 in *The New York Times*. These data are aggregated at the county level, so while we can compare general demographics, we would ideally also have more stratified within-county data to construct profiles (see next step below).

## National Data
Based on a national analysis conducted at UNC, we found that counties that were the fastest to implement social distancing were healthier and wealthier. We conclude that economic considerations should be considered in social distancing messaging.<br>

**Abstract** (fast-tracked and out for review at *New England Journal of Medicine*)<br>
Faced with a pandemic caused by a novel coronavirus, social distancing became a normative countermeasure in March 2020, which may be measured using aggregate mobile phone data. We explored if healthier and wealthier places were more successful at implementing social distancing.<br>
**Methods**<br>
We used smartphone GPS positioning data to quantify social distancing in 2,507 counties in the United States, from March 2 to March 20, 2020. Social distancing was modeled as 5-level quintiles. Linkage to eight healthcare and economic indicators at the county level allowed us to evaluate associations with the intensity of social distancing as measured by smartphone GPS movement. <br>
**Results**<br>
From 02-March to 20-March 2020, smartphone movement decreased by 35% (quintile range: 5%, 68%) in the US. There was considerable disparity in access to primary care: the lowest social distancing counties had 47.6 (95% CI: 45.2, 50.0) per 100,000, whereas the most social distancing counties had 72.3 (95% CI: 65.5, 72.3). Counties in the highest quintile of social distancing had: 51% higher mental health providers, 70% fewer uninsured, 13% higher influenza vaccination, 31% higher annual income, and 10% less income disparity, relative to the lowest quintile.<br>
**Conclusions**<br>
Healthier and wealthier areas appeared to be more successful at implementing social distancing. This disparity may have implications for disease incidence and risk stratification.<br>

![March 2 to March 20, 2020 social distancing, US](https://opioiddatalab.github.io/covidnc/figure1.png)

## NC County Analysis
**Data Sources**<br>
In this county-level analysis we will merge data from:
1. Cell phone mobility data (updated daily with a 2-day lag) as proxy for overall social distancing
2. Google changes in check-in data (Feb 16-March 29) by type of location (e.g., work, transit, etc.)
3. County demographic profiles from American Community Survey and Census and [RWJF County Health Rankings](https://www.countyhealthrankings.org/sites/default/files/media/document/DataDictionary_2020_2.pdf)
<br>We are in the process of merging and creating the master dataset.

**Analysis plan**<br>
We will first identify NC counties with lower social distancing intensity, measured as both: 1) change from baseline, and 2) total mobility. Adjustments for county-level confounders will also be considered. We will also generate county-level demographic profiles for lower social distancing areas.
<br>
These profiles will be provided to Spectrum for analysis to refine profiles.
<br>
## NC sub-county demographic profiles
*Conduct a demographically stratified analysis to generate profiles*<br>
Based on the county-level analysis above, we will identify candidate profiles of low social distancing. These profiles will be provided to Spectrum for further information on behaviors of these groups *within* counties.<br>
<br>
The outputs from these analyses will be used to develop and test messages tailored to audience segmentation.<br>
<br>

## Preliminary analyses
Social distancing as measured by percent change in cell phone mobility changes from baseline (February 17 to March 7, 2020) through April 7, 2020.
![prelimaryresults](https://opioiddatalab.github.io/covidnc/nc_cellmobility_line.png)

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


