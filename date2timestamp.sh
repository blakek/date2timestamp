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
  echo "usage: $(basename $0) [-y YEAR] [-m MONTH] [-d DAY] [-H HOUR] [-M MINUTE] [-S SECOND]"

  cat <<-EOF
	Converts a date to its epoch timestamp.

	By default, converts midnight of the current day to its timestamp.
	Specify other options (e.g. y,m,d,H,M,S) to get the timestamp for that day/time.
EOF
}

while getopts hy:m:d:H:M:S: opt; do
  case "$opt" in
    (h) showHelp; exit;;
    (y) year="$OPTARG";;
    (m) month="$OPTARG";;
    (d) day="$OPTARG";;
    (H) hours="$OPTARG";;
    (M) minutes="$OPTARG";;
    (S) seconds="$OPTARG";;
  esac
done

date -jf '%Y-%m-%d %H:%M:%S' "$year-$month-$day $hours:$minutes:$seconds" '+%s'
