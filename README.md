# Data Visualization of U.S. Domestic Airline Performance

## Introduction
The data of U.S. domestic Airline Performance presented in the HTML file are
powered by D3 and dimple.js. These two powerful libraries are used to import data
and provide clear visualization where the data are cleaned by using R.

## Summary
The data collected from RITA are consisted of flight information from 2003-2014.
Approximately 27 carriers are contained in the dataset, where only top 5
are shown. The top U.S. flights are determined by the total number of flight arrivals
or in other words, highest amount of flights.

## Data Visualization
The plot represents the On-Time arrival of the top 5 carriers. On-Time feature is
calculated by using on-time arrival divided by total arrival where the percentage
of On-Time is obtained. We will use this index to identify which carriers perform best
in different time of the month.

## Feedback
#### Feedback 1
> Presenting the data in year makes the data confusing. I do not understand and
> see clearly of what the data is telling me.

#### Feedback 2
> I like the color of the plot, but the line is hard to see. If you can make those
> line appear more attractive that will be great.

#### Feedback 3
> The data is presenting fine but what is the total number of arrivals? The graph
> does not convince me that these are top airlines.

## Adjustment
The graph was originally plotted by using year as x-axis. I adjusted the data and
explore in month instead. To make more clear plot, I decrease the opacity of other
lines when the cursor is selected at one of the line. Also second graph representing
the total number of arrival is shown.
