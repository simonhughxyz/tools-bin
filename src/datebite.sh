#!/bin/sh

# %A full weekday name
# %B full month name
# %d day of month
# %H 24 hours
# %I 12 hours
# %j day of year 0-365
# %m
# %p am/pm
# %q quater of year
# %s seconds since 1970-01-01 :00:00:00
# %S seconds
# %u day of week 1-7
# %W week number of year
# %Y year
# %m month

date '+%d/%m/%Y %A %u %d %j %W %B %m %q %Y %s' | awk '{printf "%s\nDay of Week:\t%s (%s)\nDay of Month:\t%s\nDay of Year:\t%s\nWeek of Year:\t%s\nMonth:\t\t%s (%s)\nQuarter:\t%s\nYear:\t\t%s\nSince Epoch:\t%s\n", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11}'

