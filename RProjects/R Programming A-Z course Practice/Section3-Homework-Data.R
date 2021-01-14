#Data
Rev <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
Exp <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#profit
profit <- (Rev - Exp)

profit_aft_tax <- (profit*30)/100

profit_marg <- profit_aft_tax/Rev

Mon <- seq(1, 12)


data <- cbind(Rev, Exp, Mon, profit, profit_aft_tax, profit_marg)
data


x <- mean(profit_aft_tax)

?for()
for(profit_aft_tax(1:12){
  ans <- "good months"
} else{
  ans <- "bad months"
}

mean(profit_aft_tax)
