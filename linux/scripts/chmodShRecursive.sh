# http://stackoverflow.com/questions/4249878/how-do-i-change-file-permission-to-a-certain-file-pattern-to-sub-folders-of-my-c 

find . -name "*.sh" -exec chmod +x {} \;
