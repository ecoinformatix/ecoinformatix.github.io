

all:
	- Rscript -e "files <- grep('Rmd', list.files(), value=TRUE); library(rmarkdown); sapply(files, render, 'html_document')"


pdf: 
	- Rscript -e "files <- grep('Rmd', list.files(), value=TRUE); library(rmarkdown); sapply(files, render, 'pdf_document', output_dir='../pdfNotes/')"
