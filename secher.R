scans<- read.table("secher.txt", header=T)
model<-lm(bwt~bpd, data=scans)
model2<-lm(bwt~ad, data=scans)
sum.model<-summary(model)
modelR2<- sum.model$r.squared
modelf<- sum.model$fstatistic
modelp.value<- pf(modelf[1],modelf[2],modelf[3], lower.tail=F)
mintercept<-model$coefficients[1]
mslope<-model$coefficients[2]
cat("bwt~bpd", "R2=",modelR2, "p-value=", modelp.value, "slope=", mslope, "intercepts=", mintercept)
sum.model2<-summary(model2)
model2R2<-sum.model$r.squared
model2f<-sum.model$fstatistic
model2p.value<-pf(model2f[1],model2f[2],model2f[3], lower.tail=F)
m2intercept<-model$coefficients[1]
m2slope<- model$coefficients[2]
cat("bwt~ad", "R2=", model2R2, "p-value=", model2p.value, "slope=", m2slope, "intercepts=",m2intercept)
png("bwt_bpd.png")
plot(bwt~bpd, data=scans)
abline(model)
png("bwt_ad.png")
plot(bwt~ad, data=scans)
abline(model2)

