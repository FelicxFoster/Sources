
d <- read.delim2('Test2.xls', header=T, row.names=1)

# pdf('Test2.pdf')
boxplot(t(d), col='#224466', ylab='No. of Mutations')
# dev.off()
