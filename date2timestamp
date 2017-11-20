#!/bin/sh

# Save current date into an array to use for defaults later
IFS=':'
now=($(date -j '+%Y:%m:%d'))

# Set default times
year=${now[0]}
month=${now[1]}
day=${now[2]}
hours=0
minutes=0
seconds=0

function showHelp() {
  echo 'Convert a date to its epoch timestamp.'
  echo "Usage: $(basename "${0}") [options]"
  echo ''
  echo 'By default, converts midnight of the current day to its timestamp.'
  echo ''
  echo 'Options:'
  echo '  -y YEAR      year to use for date (default: current year)'
  echo '  -m MONTH     month to use for date (default: current month)'
  echo '  -d DAY       day to use for date (default: current day)'
  echo '  -H HOUR      hour to use for date (default: 0)'
  echo '  -M MINUTE    minute to use for date (default: 0)'
  echo '  -S SECOND    second to use for date (default: 0)'
}

while getopts hy:m:d:H:M:S: opt; do
  case "${opt}" in
    (h) showHelp; exit;;
    (y) year="$OPTARG";;
    (m) month="$OPTARG";;
    (d) day="$OPTARG";;
    (H) hours="$OPTARG";;
    (M) minutes="$OPTARG";;
    (S) seconds="$OPTARG";;
  esac
done

date -jf '%Y-%m-%d %H:%M:%S' "${year}-${month}-${day} ${hours}:${minutes}:${seconds}" '+%s'
