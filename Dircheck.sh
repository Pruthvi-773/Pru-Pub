#!/bin/bash
#!/bin/bash

echo "Going to create file using shell script"
read dirname

if [ -d $dirname ];
        then
         echo "File $dirname Already Exist"

else mkdir -p $dirname
                 echo " Creating  $dirname since it is not Exist in the $PWD "

fi

