#!/bin/sh

# trunk - given a string, will return a string of given character
# count. Can truncate a string from beggining or end.
# Can add an elipsis to beginning or end of string.

count=10 # default character count
elipsis="" # elipsis used to end or begin string
reverse=false # truncate string from begining, default false

truncate() {
    local cnt=$2

    #include elipsis in count
    if [ "$elipsis" != "" ]; then
        c=$(echo -n "$elipsis" | wc -m)
        cnt=$(($cnt-$c))
    fi
    

    if [ "$reverse" = true ]; then
        result=$( echo -n "$1" | rev | cut -c-$cnt | rev )
        [ "$elipsis" != "" ] && [ "$1" != "$result" ] && result=$elipsis$result;
    else
        result=$( echo -n "$1" | cut -c-$cnt)
        [ "$elipsis" != "" ] && [ "$1" != "$result" ] && result=$result$elipsis;
    fi


    echo "$result"
}


while getopts ":erc:E:" opt; do
  case $opt in
    c)
      count=$OPTARG
      ;;
    E)
      elipsis=$OPTARG
      ;;
    e)
      elipsis="..."
      ;;
    r)
      reverse=true
      ;;
    \?)
      echo "Invalid Option"
      echo "Script usage: $(basename $0) [-r] [-e] [-c INT] [-E STR]" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"

#while read line
while IFS= read -r line
do
    truncate "$line" $count
done < "${1:-/dev/stdin}"

