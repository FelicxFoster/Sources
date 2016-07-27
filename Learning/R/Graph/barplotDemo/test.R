# Basic graph test

d <- read.table('Test.xls', header=T, row.names=1)

png('Test.png')
barplot(t(d), beside=T, col=1:2,
        ylim=c(0,120000),  #指定范围，否则数值过大默认科学计数法显示; 间隔怎么弄?
        ylab='Numbers', xlab='Interval', main='Distribution',
        legend=colnames(d))
dev.off()

