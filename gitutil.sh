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

fdir=./util/$dirname
fabs=$fdir/$fkey.txt

if [ ! -d "$fdir" ]; then
    mkdir $fdir
fi

echo "["$(date)"]" "Create file, key =" $fkey > $fabs

cat $fabs

git add $fabs
git commit -m "Add util file" $fabs
