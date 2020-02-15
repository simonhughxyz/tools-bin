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

#date '+%d/%m/%Y %A %u %d %j %W %B %m %q %Y %s' | awk '{printf "%s\nDay of Week:\t%s (%s)\nDay of Month:\t%s\nDay of Year:\t%s\nWeek of Year:\t%s\nMonth:\t\t%s (%s)\nQuarter:\t%s\nYear:\t\t%s\nSince Epoch:\t%s", $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11}'

#echo "Local: $(date '+%T')"
#echo "London: $(TZ='Europe/London' date '+%T')"
#echo "Berlin: $(TZ='Europe/Berlin' date '+%T')"
#echo "New York: $(TZ='America/New_York' date '+%T')"
#echo "Los Angeles: $(TZ='America/Los_Angeles' date '+%T')"
#echo "Tokyo: $(TZ='Asia/Tokyo' date '+%T')"
#echo "Hong Kong: $(TZ='Asia/Hong_Kong' date '+%T')"
#echo "Sydney: $(TZ='Australia/Sydney' date '+%T')"

printf "Local:\t\t%s\nLondon:\t\t%s\nBerlin:\t\t%s\nMoscow:\t\t%s\nNew York:\t%s\nLos Angeles:\t%s\nTokyo:\t\t%s\nHong Kong:\t%s\nSydney:\t\t%s\n" $(date '+%T') $(TZ='Europe/London' date '+%T') $(TZ='Europe/Berlin' date '+%T') $(TZ='Europe/Moscow' date '+%T') $(TZ='America/New_York' date '+%T') $(TZ='America/Los_Angeles' date '+%T') $(TZ='Asia/Tokyo' date '+%T') $(TZ='Asia/Hong_Kong' date '+%T') $(TZ='Australia/Sydney' date '+%T') 
