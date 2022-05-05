
if [ $# != 3 ]; then
	echo "ERROR: Invalid params"
	echo "Usage: $0 append_key file_key dirname";
	exit
fi

akey=$1
fkey=$2
dirname=$3

fabs=./$dirname/$fkey.txt

if [ ! -d "$dirname" ]; then
    mkdir $dirname
fi

echo "["$(date)"]" "Append file, key =" $akey >> $fabs

cat $fabs