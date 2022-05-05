
if [ $# -ne 1 ]; then
	echo "Usage: $0 branch_name"
	exit 0
fi

branch=$1

git status
git add .
git commit -m "Update code using push script"
git push -u origin $branch
