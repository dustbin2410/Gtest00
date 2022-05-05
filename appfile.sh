if [ $# -eq 2 ]; then
	akey=$1
	fkey=def
	dirname=$2
elif [ $# -eq 3 ]; then
	akey=$1
	fkey=$2
	dirname=$3
else
	echo "ERROR: Invalid params"
	echo "Usage: $0 append_key file_key dirname";
	exit 0
fi

fabs=./$dirname/$fkey.txt

if [ ! -d "$dirname" ]; then
    mkdir $dirname
fi

echo "["$(date)"]" "Append file, key =" $akey >> $fabs

cat $fabs