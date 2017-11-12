IFS=$'\n'
for line in `conda env list | awk '$1!="#" {print  $1}'`
do
echo $line
source activate $line
conda env export > "${line}.yml"
done

source deactivate