if [ $# -eq 1 ]; then
	fkey=def
	dirname=$1
elif [ $# -eq 2 ]; then
	fkey=$1
	dirname=$2
else
	echo "ERROR: Invalid params"
	echo "Usage: $0 file_key dirname";
	exit 0
fi

fabs=./$dirname/$fkey.txt

if [ ! -d "$dirname" ]; then
    mkdir $dirname
fi

echo "["$(date)"]" "Create file, key =" $fkey > $fabs

cat $fabs