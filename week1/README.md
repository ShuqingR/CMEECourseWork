# Week 1 – UNIX & Shell Scripting

UNIX command line operation & shell scripting.  
All codes and data from week1 are breifly explained below.

## Folder Structure

```text
week1
├── code
│   ├── boilerplate.sh
│   ├── CompileLaTex.sh
│   ├── ConcatenateTwoFiles.sh
│   ├── CountLines.sh
│   ├── csvtospace.sh
│   ├── FirstBiblio.bib
│   ├── FirstExample.tex
│   ├── MyExampleScript.sh
│   ├── tabtocsv.sh
│   ├── tiff2png.sh
│   ├── UnixPrac1.txt
│   └── variables.sh
|
├── data
│   ├── 1800.csv
│   ├── 1801.csv
│   ├── 1802.csv
│   ├── 1803.csv
│   ├── 407228326.fasta
│   ├── 407228412.fasta
│   ├── TIFFexample.tif
│   └── E.coli.fasta
|
├── results
|
├── sandbox
|
└── README.md

```

## Scripts

### UNIX Shell Commands
1. UnixPrac1.txt  
- Perform basic FASTA file reading and processing, compute the AT/CG ratio.
- Usage: select the needed parts from the file, or
```
bash UnixPrac1.txt
```

### Shell Scripting
2. boilerplate.sh  
- Prints a text message.  
- Usage: 
```
bash boilerplate.sh
```
3. ConcatenateTwoFiles.sh
- Merge 2 files
- Usage:
```
bash ConcatenateTwoFiles.sh <file1> <file2> <output_file>
```
4. CountLines.sh
- Count number of line for a file
- Usage:
```
bash CountLines.sh <file_name>
```
5. csvtospace.sh
- covert file format for assigned temperature data, from comma to space seperated values.

6. MyExampleScript.sh
- text exhibiting

7. tabtocsv.sh
- format convertion

8. tiff2png.sh
- image format conversion

9. variables.sh` 
- exhibite special and user-defined variables.  

### LaTeX
10. FirstBiblio.bib
- Store bibliography for latex files.

11. FirstExample.tex
- An example of Latex script for a short article.

12. CompileLaTex.sh  
- Automated compilation of LaTex articles.
- Usage
```
bash CompileLaTex <filename.tex>
```

## Extra contents
### Git Version Control
- Initialising repositories  
- Branching & merging  
- SSH connection to GitHub  
- `.gitignore` usage  

## Author
- **Name:** Shuqing Ren  
- **Email:** shuqing.ren22@imperial.ac.uk
