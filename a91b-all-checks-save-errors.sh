#!bin/bash



#run the checks twice
#open a new terminal and run the following commands again

bash a91-all-checks.sh 2>&1 | tee a091-all-output.txt

bash a91-all-checks.sh 2> a091-errors-only.txt
