## -----------------------------------------------------------------------------
library(mFLICA)

# mFLICA::TS[i,t,d] is an element of ith time series at time t in the dimension d. Here, we have only two dimensions: x and y. The time series length is 800, so, t is in the range [1,800]. There are 30 individuals, so, i is in the range [1,30].
plotMultipleTimeSeries(TS=mFLICA::TS[,,1],strTitle="x axis")

## -----------------------------------------------------------------------------
plotMultipleTimeSeries(TS=mFLICA::TS[,,2],strTitle="y axis")
?followingRelation

## -----------------------------------------------------------------------------
obj1<-mFLICA(TS=mFLICA::TS[,1:200,],timeWindow=60,sigma=0.5)


## -----------------------------------------------------------------------------
 plotMultipleTimeSeries(TS=obj1$dyNetOut$dyNetBinDensityVec, strTitle="Network Dnesity")

## -----------------------------------------------------------------------------
 plotMultipleTimeSeries(TS=obj1$factionSizeRatioTimeSeries, strTitle="Faction Size Ratios")

