#!/bin/bash

myfile="mobifile.sh"

while [ ! -f $myfile ]
do 
    echo "The file ~ $myfile doesn't exist"
    
    echo "Creating $myfile ..."
    touch $myfile
    echo "#!/bin/bash" > $myfile
    echo "$myfile has been created at $(date)"
    cat $myfile 
done

echo "The file '$myfile' exists"




# myVar=0

# while [ $myVar -lt 10 ]
# do 
#     myVar=$((myVar + 1))
#     echo "$myVar"
#     sleep 0.05
# done 