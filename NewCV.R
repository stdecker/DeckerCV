---
title: "Stephen Decker's CV"
author: Stephen Decker
date: "`r Sys.Date()`"
output:
  pagedown::html_resume:
    css: ['dd_cv.css', 'resume']
    # set it to true for a self-contained HTML page but it'll take longer to render
    self_contained: true
# uncomment this line to produce HTML and PDF in RStudio:
#knit: pagedown::chrome_print
---

```{r, include=FALSE}
knitr::opts_chunk$set(
  results='asis', 
  echo = FALSE
)
library(tidyverse)
library(glue)
# ======================================================================
# These variables determine how the the data is loaded and how the exports are
# done.
# Is data stored in google sheets? If no data will be gather from the csvs/
# folder in project
using_googlesheets <- TRUE
# Just the copied URL from the sheet
positions_sheet_loc <- "https://docs.google.com/spreadsheets/d/1MY5JRFv3pKLZCtqM3EmfsobBgSVt6v3PhFtv0U-JKQU/edit#gid=1730172225"
# Is this sheet available for anyone to read? If you're using a private sheet
# set this to false and go to gather_data.R and run the data loading manually
# once to cache authentication
sheet_is_publicly_readable <- TRUE
# Is the goal of this knit to build a document that is exported to PDF? If so
# set this to true to have links turned into footnotes at the end of the
# document
PDF_EXPORT <- FALSE
# A global (gasp) variable that holds all the links that were inserted for
# placement at the end
links <- c()
# ======================================================================
# Now we source two external scripts. One contains functions for building the
# text output and the other loads up our data from either googlesheets or csvs
# Functions for building sections from CSV data
source('parsing_functions.R') 
# Load data for CV/Resume
source('gather_data.R')
# Now we just need to filter down the position data to include less verbose
# categories and only the entries we have designated for the resume
position_data <- position_data %>% 
  filter(in_resume) %>% 
  mutate(
    # Build some custom sections by collapsing others
    section = case_when(
      section %in% c('research_positions', 'industry_positions') ~ 'positions', 
      section %in% c('data_science_writings', 'by_me_press') ~ 'writings',
      TRUE ~ section
    )
  ) 
```



Aside
================================================================================




Connect with Me {#contact}
--------------------------------------------------------------------------------

-   <i class="fa fa-envelope"></i> [stdecker@umass.edu](mailto:stdecker@umass.edu){.email}
-   <i class="fa fa-phone"></i> (713) 452-9516
-   <i class="fa fa-twitter"></i> @[decker_st](https://twitter.com/decker_st)



Links & Resources {#about}
--------------------------------------------------------------------------------
-   <i class="fa fa-file"></i> [PubMed](https://pubmed.ncbi.nlm.nih.gov/?sort=date&term=Decker+ST&cauthor_id=30471329)
-   <i class="fa fa-linkedin"></i> [LinkedIn](https://www.linkedin.com/in/deckerst/)
-   <i class="fab fa-researchgate"></i> [ResearchGate](https://www.researchgate.net/profile/Stephen-Decker-3)
-   <i class="fa fa-github"></i> [Github](https://github.com/stdecker)
-   <i class="fa fa-medium"></i> [Medium](https://medium.com/@decker_st)


Skills {#skills}
--------------------------------------------------------------------------------

```{r}
build_skill_bars(skills)
```

Ongoing Projects {#ongoing}
--------------------------------------------------------------------------------

*A Guide for the Analysis of High-Resolution Respirometry Data Using R*: Version 2 Available on my [GitHub](https://github.com/stdecker)

*respirometR* a package for analyzing Oxygraph O2K data using R (under development)


Disclaimer {#disclaimer}
--------------------------------------------------------------------------------

Last updated on `r Sys.Date()` using R version `r getRversion()` and [**pagedown**](https://github.com/rstudio/pagedown).



Main
================================================================================

Stephen Decker {#title}
--------------------------------------------------------------------------------

### MS, CEP


Academic Training {data-icon=graduation-cap}
--------------------------------------------------------------------------------

```{r}
position_data %>% print_section('education')
```




Publications {data-icon=file}
--------------------------------------------------------------------------------


### Skeletal muscle Mitochondrial Adaptations Induced by Long-term Cigarette Smoke Exposure

**Decker, ST**, Kwon, OS, Zhao, J, Hoidal, JR, Hueckstadt, T, Richardosn, RS, Sanders, KA, Layec, G

N/A

2021

*American Journal of Physiology-Endocrinology & Metabolism*

### Sampling Arterial Input Function (AIF) from Peripheral Arteries: Comparison of a Temporospatial-feature Based Method Against Conventional Manual Method [[PubMed](https://pubmed.ncbi.nlm.nih.gov/30471329/)]

Li, X, Conlin, CC, **Decker, ST**, Hu, N, Mueller, M, Khor, L, Hanrahan, C, Layec, G, Lee, VS, Zhang, JL 

N/A

2019

*Magnetic Resonance Imaging*

### The Receptor for Advanced Glycation End Products (RAGE) Mediates Cigarette Smoke-Induced Skeletal Muscle Adaptations in C57BL/6 Mice

**Decker, ST**, Kwon, OS, Zhao, J, Hoidal, JR, Hueckstadt, T, Sanders, KA, Layec, G

N/A

In Preparation

### ^31^P-MRS of Alkaline Inorganic Phosphate in Young, Sedentary Adults: A Reproducibility Study

Matias, AA, **Decker, ST**, Nagarajan, R, Le Fur, Y, Layec, G

N/A

In Preparation

### Central and Peripheral Cardiovascular Responses to Submaximal Plantar Flexion Exercise in Patients with COPD

Matias, AA, Thurston, T, **Decker, ST**, Hart, CH, Zhao, J, Le Fur, Y, Jeong, EK, Trinity, JD, Kwon, OS, Layec, G

N/A

In Preparation



Oral Presentations {data-icon=comment-dots}
--------------------------------------------------------------------------------

### The Physiological Role of Sirtuins: A Target for Aging or More Hype?

University of Amherst Department of Kinesiology

Amherst, Massachusetts

2019

### Effects of Tetrahydrobiopterin on Limb Blood Flow and Muscle Metabolism in Patients with COPD

ISMRM Annual Meeting

Montreal, Quebec

2019


Selected Posters & Abstracts {data-icon=bookmark}
--------------------------------------------------------------------------------

### Oxidative Stress Induced By Long-Term Cigarette Smoke Exposure Does Not Alter Mitochondrial Respiration in Skeletal Muscle of C57BL/6 Mice

New Insights into the Biology of Exercise

Keystone, Colorado

2020

### Knockout of the Receptor for Advanced Glycation End Products (RAGE) Increases Skeletal Muscle Mitochondria Content and Alters Mitochondrial Function

Muscle Biology Conference 

Gainesville, Florida

2019


### Effects of Tetrahydrobiopterin on Limb Blood Flow and Muscle Metabolism in Patients with COPD

ACSM Annual Meeting 

Minneapolis, Minnesota

2018

### Effects of Acute Exercise on Postprandial Lipemia and Postprandial Glycemia

Texas ACSM Regional Conference

Waco, Texas

2017


Funding {data-icon=dollar-sign}
--------------------------------------------------------------------------------

::: aside

#### Teaching Philosophy

I am very enthusiastic about sharing knowledge and teaching. I believe it is important to acknowledge the numerous ways in which students learn, and how past personal experiences shape each student's worldview and the learning process. Therefore, learning must be a journey that is tailored to students' needs. I aim to bring an open mind and high expectations to the classroom, where I aspire to create an inclusive and welcoming environment that also encourages students to achieve higher learning outcomes. 

:::

### Research Travel Award Recipient

University of Amherst Department of Kinesiology

N/A

2020

Awarded $500

### Predoctoral Fellowship

American Heart Association

N/A

2019

Not Funded

### Trainee Stipend Award

International Society for Magnetic Resonance in Medicine

N/A

2019

Awarded $200 and Conference Registration

### Student Research Development Award

Texas American College of Sports Medicine

N/A

2016

Awarded $500




Teaching Experience {data-icon=chalkboard-teacher}
--------------------------------------------------------------------------------


### KIN 272 - Anatomy and Physiology II (Instructor of Record)

University of Massachusetts Amherst

Amherst, Massachusetts

2021

Instructed 1 section of A&P II to over 20 undergraduate students with the goal of understanding human anatomy and physiology and applying that understanding to career goals and real-life case studies.



### Kin 470 - Exercise Physiology Lab (TA)

University of Massachusetts Amherst

Amherst, Massachusetts

2021

Led 2 sections of Exercise Physiology Lab to over 20 upper-level undergraduate students with the goal of advancing student understanding of physiology and applying that understanding to career goals and real-life case studies.

### KIN 270 - Anatomy and Physiology I Lab (TA)

University of Massachusetts Amherst

Amherst, Massachusetts

2020

Led 5 sections of A&P I Lab to over 30 undergraduate students with the goal of understanding human anatomy and physiology and applying that understanding to career goals and real-life case studies.

### Kin 570 - Advanced Exercise Physiology (TA)

University of Massachusetts Amherst

Amherst, Massachusetts

2019

Aided in teaching 15 graduate students (M.S.- & Ph.D.-level) with the goal of advancing students' understanding of advanced topics in human physiology.

### Kin 110 - Human Performance and Nutrition (TA)

University of Massachusetts Amherst

Amherst, Massachusetts

2019 - 2018

Led 7 discussion sections to over 200 undergraduate students over the course of 2 semesters with the goal of teaching students about healthy lifestyles.

### Kin 100 - Physical Fitness Concepts and Activities (Instructor of Record)

Stephen F. Austin State University

Nacogdoches, Texas

2016 - 2015

Instructed 1 section of over 30 students with the goal of providing students insights to a healthy lifestyle.

### KIN 120 - Foundations of Kinesiology (Instructor of Record)

Stephen F. Austin State University

Nacogdoches, Texas

2015

Instructed 1 section of over 30 students with the goal of introducing students to the field of kinesiology.

### KIN 200 - Fitness Activites for Life (Instructor of Record)

Stephen F. Austin State University

Nacogdoches, Texas

2014

Instructed 1 section of over 30 students with the goal of developing student-centered fitness plans and goals which can be used throughout life.

### American Red Cross CPR and Lifeguarding Instructor

Various

Texas

2016 - 2012

Led dozens of independent Lifeguard and CPR/AED + First Aid courses to hundreds of lifeguards.


Professional Development & Training {data-icon=laptop}
--------------------------------------------------------------------------------

### Certified Clinical Exercise Physiologist

American College of Sports Medicine

Indianapolis, Indiana

Current

### Certified Exercise Physiologist

American College of Sports Medicine

Indianapolis, Indiana

Current

### Oroboros O2k-Workshop on High-Resolution Respirometry (HRR)

Oroboros Instruments

Schröcken, Austria

2019

Honors and Awards {data-icon=award}
--------------------------------------------------------------------------------


### Student Research Poster Finalist - Masters Category

Texas American College of Sports Medicine

Waco, Texas

2017

### Undergraduate Research Conference Top Scholar

Stephen F. Austin State University School of Honors

Nacogdoches, Texas

2014


Trainees {data-icon=users}
--------------------------------------------------------------------------------

### Alexs Matias (Graduate)

Trained how to collect skeletal muscle mitochondrial respiration data using the Oxygraph O2K and the assessment of vascular function using Doppler Ultrasound.

N/A

Present - 2019

### M. Enes Erol (Graduate)

Trained how to collect skeletal muscle mitochondrial respiration data using the Oxygraph O2K and the assessment of vascular function using Doppler Ultrasound.

N/A

Present - 2020


### Mia Calderone (Undergraduate)

Trained how to collect skeletal muscle mitochondrial respiration data using the Oxygraph O2K and the assessment of vascular function using Doppler Ultrasound.

N/A

Present - 2020

### Jack Madden (Undergraduate)

Trained how to collect skeletal muscle mitochondrial respiration data using the Oxygraph O2K.

N/A

Present - 2020

### Jyotika Vallurupalli (Undergraduate)

Trained the assessment of vascular function using Doppler Ultrasound and continuous non-invasive arterial pressure.

N/A

2018 - 2021

### Sebastien Rauch (Undergraduate)

**Honors Thesis:** Validity and Specificity of Tetramethylrhodamine, Methyl Ester (TMRM) Dye in Mice Gastrocnemius Muscle Fiber Bundles for Assessing Mitochondrial Membrane Potential.

N/A

2020 - 2018
