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

The exploration of the graph provides interesting findings. We can see that the
carrier that has the highest On-Time arrivals feature is SkyWest Airlines, where
the poorest airline is American Airlines, which is quite surprising. Another interesting
finding is the drops of every airlines performance during months 6-8 including
month 12. This finding might be correlated to the traveling seasons where more
passengers are traveling (which most of the time, the more people in the plane
the more delay you get) and also might be about weather. These assumptions require
more data exploratory phases and validation.

## Data Visualization
The plot represents the On-Time arrival of the top 5 carriers to provide a clear
visualization with out crowding the graph. On-Time feature is
calculated by using on-time arrival divided by total arrival where the percentage
of On-Time is obtained. We will use this index to identify which carriers perform best
in different time of the month.

### Design Selection
Line plot is chosen to show the On-Time arrival
feature to provide a link and progress between each individual month, where
bar plot is perfect to show the proportion between each airline in a single month.

The color representing each data is critical where it guides the user to delineates
between each airline easily, therefore, the colors for each airline is selected to
be the same.

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
