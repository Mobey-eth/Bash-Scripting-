#!/bin/bash


for file in logfiles/*.log
do 
    tar -czvf $file.tar.gz $file
    echo "The file $file has been compressed"
    sleep 0.2
done


# for current_number in {1..19}
# do
#     echo "The current number is $current_number"
#     sleep 0.2
# done

# echo "This is outside the loop"