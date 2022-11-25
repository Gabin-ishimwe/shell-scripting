#Writing script that allows to find unique data in any file
for filename in $@
do
    echo "The unique species in your file $filename are:"
    # Extracting the unique species without duplicants
    cut -d , -f 2 $filename | sort | uniq
done
