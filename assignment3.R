Name = c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political_poll_results = c(4, 62, 51, 21, 2, 14, 15)
NCB_political_poll_results = c(12, 75, 43, 19, 1, 21, 19)

results = cbind(Name, ABC_political_poll_results, NCB_political_poll_results)
results

results.df = data.frame(Name, ABC_political_poll_results, NCB_political_poll_results)
results.df

r=rowMeans(results.df[,2:3])
r.df=data.frame(Name,r)
mean(as.matrix(results.df[,2:3]))

plot(r.df, ylab = "average poll results", xlab = "candidate", main = "Poll Results")
