# Week 3 – R

R programming fundamentals for modelling, data wrangling, analysis, and visualisation.
Codes from week3 are breifly explained below.

## Project Structure

```
week3
├── code
│   ├── apply1.R
│   ├── apply2.R
│   ├── basic_io.R
│   ├── boilerplate.R
│   ├── break.R
│   ├── browser.R
│   ├── control_flow.R
│   ├── DataWrang.R
│   ├── Florida.R
│   ├── FloridaFig.pdf
│   ├── FloridaResults.pdf
│   ├── FloridaResults.tex
│   ├── Girko.R
│   ├── MyBars.R
│   ├── next.R
│   ├── plotLin.R
│   ├── PP_Regress.R
│   ├── preallocate.R
│   ├── R_conditionals.R
│   ├── sample.R
│   ├── TreeHeight.R
│   ├── Vectorize1.R
│   └── try.R
│
├── data
│   ├── EcolArchives-E089-51-D1.csv
│   ├── KeyWestAnnualMeanTemperature.RData
│   ├── PoundHillData.csv
│   ├── PoundHillMetaData.csv
│   ├── Results.txt
│   └── trees.csv
│
├── results
│
├── sandbox
│
└── README.md
```

## Scripts

### R Basics
1. basic_io.R
- Reading and writing of .csv and .RData files.
2. boilerplate.R
- Template for R scripts with author/date metadata.

### Control Flow & Conditions
3. control_flow.R
- if/else and loop structures.
4. R_conditionals.R
- conditional expressions.
5. break.R; next.R
- Use of `break` and `next` in loops.
6. try.R
- Error handling and reporting with `try()`.

### Vectorisation & apply-family
7. Vectorize1.R; Vectorize2.R
- loops and vectorised operations.
8. apply1.R; apply2.R
- cleaner code with `apply()`, `lapply()`, `sapply()`.
9. preallocated.R
- preallocating vectors for procesing efficiency.
10. sample.R
- Random sampling in R.

### Statistical & Ecological application
11. Girko.R
- Viualisation example: Girko ellipse.
12. TreeHeight.R
- Apply trigonometric formula to calculates heights of trees given distance of each tree from its base and angle to its top.

### Main Applied Assignment
13. Florida.R
- Analyses Florida temperature trend over time using regression.
14. FloridaResults.tex / .pdf
- Short report for analysis in `Florida.R`.
15. PP_Regress.R
- Visualisation of complex graphs for scientific paper.

## Usage Examples

```bash
Rscript Boilerplate.R
```

## Author

- **Name:** Shuqing Ren 
- **Email:** shuqing.ren22@imperial.ac.uk