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

fdir=./util/$dirname
fabs=$fdir/$fkey.txt

if [ ! -d "$fdir" ]; then
    mkdir $fdir
fi

echo "["$(date)"]" "Append file, key =" $akey >> $fabs

cat $fabs