if [ $# -ne 2 ]; then
	echo "ERROR: Invalid params"
	echo "Usage: $0 file_key dirname";
	exit 0
fi

fkey=$1
dirname=$2

fabs=./$dirname/$fkey.txt

if [ ! -d "$dirname" ]; then
    mkdir $dirname
fi

echo "["$(date)"]" "Create file, key =" $fkey > $fabs

cat $fabs