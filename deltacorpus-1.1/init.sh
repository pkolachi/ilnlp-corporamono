#!/bin/bash
curl --remote-name-all https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-1743{/deltacorpus-1.1.tar}
tar -xvf deltacorpus-1.1.tar
for lang in "ben" "guj" "hin" "kan" "mal" "tam" "tel" "urd" ; 
do
    mv deltacorpus-1.1/data/$lang.txt.gz .
done
mv deltacorpus-1.1/README.txt README_orig.txt
mv deltacorpus-1.1/POS_TAGSET.txt .
rm -r deltacorpus-1.1.tar deltacorpus-1.1
