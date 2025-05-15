data(mtcars)

## build a predictive model of mpg given other variables
library(gbm)

mod <- gbm(mpg ~ . , data=mtcars, bag.fraction = 0.8, n.trees=10000)
brt.best.iter <- gbm.perf(mod, method='OOB')

predictions <- predict(mod, type='response', n.trees=brt.best.iter)

pdf('modelperformance.pdf', height=4, width=5)
par(mar=c(4,4,0.5,0.5))
plot(x=predictions, y=mtcars$mpg, 
  xlab='predicted mpg',
  ylab='actual mpg', 
  pch=16, col='dodgerblue', 
  las=1)
dev.off()

save.image('analysis.RData')
