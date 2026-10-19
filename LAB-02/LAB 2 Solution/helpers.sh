#!/bin/bash

# This Script Contain Two functions

ok(){
	echo [ OK ]
}

fail(){
	echo [ FAIL ]
}

is_running(){
pgrep -x "$1">/dev/null 2>&1
if [ "$?" -eq 0 ]
then
return 0

else

return 1

fi
}

ask(){
echo Do you want to Delete "$1" press y if yes press n for no press stop for out
read option
answer="$option"
}
