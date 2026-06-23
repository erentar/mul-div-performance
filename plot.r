df1 = read.csv("out.csv")
png("plot.png",width=1000,height=1000,res=150)
plot=boxplot(df1,ylab="time (s)")
