#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


# https://stackoverflow.com/questions/40082346/how-to-check-if-a-file-exists-in-a-shell-script?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa


# Check if local file exists
if [ -e x.txt ]
then
    echo "ok"
else
    echo "nok"
fi




# Check if remote file or dir exists
# https://stackoverflow.com/questions/12845206/check-if-file-exists-on-remote-host-with-ssh?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

if ssh $HOST stat $FILE_PATH \> /dev/null 2\>\&1
            then
                    echo "File exists"
            else
                    echo "File does not exist"
fi



# Check if local dir exists
# https://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
if [ -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY exists.
fi




# Check if remote dir exists
# https://www.unix.com/unix-for-beginners-questions-and-answers/269549-how-test-if-remote-dir-exist.html
if ssh $HOST stat $FILE_PATH \> /dev/null 2\>\&1
            then
                    echo "File exists"
            else
                    echo "File does not exist"
fi
