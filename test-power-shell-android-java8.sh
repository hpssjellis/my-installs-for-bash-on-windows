#!bin/bash

# use power shell in windows then type bash



#for errors to output file and terminal and rewrite old file
#bash a91-all-checks.sh 2>&1 | tee log.txt

#if you have errors then write 
#bash a91-all-checks.sh 2>log5.txt


#To view    search (/ text to search Enter) in the file; press q to exit.
#less log5.txt



bash a02v3-java8.sh 


bash a10v2-android.sh


#run the checks twice
#open a new terminal and run the following commands again

bash a91-all-checks.sh 2>&1 | tee a091-all-output.txt

bash a91-all-checks.sh 2> a091-errors-only.txt
