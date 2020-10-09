#!/bin/bash

for lang in "as" "bn" "en" "gu" "hi" "kn" "ml" "mr" "or" "pa" "ta" "te" ;
do
    dlink="https://storage.googleapis.com/ai4bharat-public-indic-nlp-corpora/indiccorp/$lang.tar.xz"
    fname="$lang.tar.xz"
    wget $dlink ;
    tar -xvf $fname ;
    xz --best data/$lang/$lang.txt ;
    rm $fname ;
done

mv data/* .
rm -r data

