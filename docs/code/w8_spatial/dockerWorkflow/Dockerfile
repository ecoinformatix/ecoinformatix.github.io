FROM rocker/r-ver:3.4.4
RUN mkdir /home/analysis

RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2021-01-06/')); \
  install.packages('gbm')"

COPY analysis.R /home/analysis/analysis.R

CMD cd /home/analysis \
  && R -e "source('analysis.R')" \
  && mv /home/analysis/analysis.RData /home/analysis.RData \
  && mv /home/analysis/modelperformance.pdf /home/modelperformance.pdf
