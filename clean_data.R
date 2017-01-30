### Load and inspect data
```{r}
setwd('~/Desktop/')
df <- read.csv('963515554_112016_2528_airline_delay_causes.csv')
str(df)
summary(df)
head(df)
```

### Clean data
```{r}
library(dplyr)
# clean up date
df$date <- as.Date(paste(df$year, df$X.month, 1, sep='-'), format="%Y-%m-%d")
summary(df$date)

nrow(table(df$carrier))

df_1 <- df[complete.cases(df$arr_flights),]
df_cleaned <- df[complete.cases(df$arr_del15),]

# make a new summary table
ef <- df_cleaned %>%
  group_by(X.month, carrier_name) %>%
  summarize(arrivals = sum(arr_flights),
            delayed = sum(arr_del15),
            cancelled = sum(arr_cancelled),
            diverted = sum(arr_diverted)) %>%
  transform(on_time = 1 - delayed/arrivals)

# stash NA values
ef <- ef[complete.cases(ef),]
```

ef_1 <- subset(ef,carrier_name == 'Delta Air Lines Inc.')


p1 <- ggplot(data = ef,
             aes(x = X.month, y = on_time)) +
  geom_line(aes(color = carrier_name)) +
  scale_x_continuous(limits=c(1, 12), breaks=c(1:12))
p1

# aggregate by carrier name
# aggregate by carrier name
agg <- ef %>%
  group_by(carrier_name) %>%
  summarize(monthly_avg = mean(arrivals),
            arrivals = sum(arrivals))

# pull 75th percentile, by monthly average arrivals
selected_carriers <- subset(agg, monthly_avg >= quantile(monthly_avg, 0.81))$carrier_name
selected_carriers


ff <- subset(ef, is.element(carrier_name, selected_carriers)) %>%
  group_by(X.month, carrier_name) %>%
  summarize(arrivals = sum(arrivals),
            delayed = sum(delayed),
            cancelled = sum(cancelled),
            diverted = sum(diverted)) %>%
  transform(on_time = 1 - delayed/arrivals)
ff <- ff[complete.cases(ff),]


library(gridExtra)
p1 <- ggplot(data = ff,
             aes(x = X.month, y = on_time)) +
  geom_line(aes(color = carrier_name)) +
  scale_x_continuous(limits=c(1, 12), breaks=c(1:12))

p2 <- ggplot(data = ff,
             aes(x = X.month, y = arrivals)) +
  geom_line(aes(color = carrier_name)) +
  scale_x_continuous(limits=c(1, 12), breaks=c(1:12))

grid.arrange(p1, p2, ncol=1)
