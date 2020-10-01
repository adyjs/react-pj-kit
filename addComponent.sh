#! /bin/bash

# React File Structure Tree
# 
# my-app
# ├── build
# ├── node_modules
# ├── public
# │   ├── favicon.ico
# │   ├── index.html
# │   └── manifest.json
# ├── src
# │   ├── components
# │   │   ├── app
# │   │   │   ├── app.css
# │   │   │   ├── app.js
# │   │   │   └── app.test.js
# │   │   └── index.js
# │   ├── images
# │   │   └── logo.svg
# │   ├── packages
# │   │   └── ...
# │   ├── utils
# │   │   ├── ...
# │   │   └── index.js
# │   ├── index.css
# │   ├── index.js
# │   └── service-worker.js
# ├── .gitignore
# ├── package.json
# └── README.md 
# 


# newFile=$1;

    # echo $1.$2;
# 確認檔案是否已存在
# function duplicateCheck(){
#     if [ -d "$newFile" ]; then
#         echo "$newFile already exist, try another file name.";
#         echo "Process terminated.";
#         exit 1;
#     fi
# }

newFile=$1
# 如果沒輸入檔案名
function fileNameCheck(){
    if [ -z "$newFile" ]; then
        echo "Must input new file name.";
        echo "Process terminated.";
        exit 1;
    fi
}



# entry point

fileNameCheck;

# positionCheck
# read -p "Does this script in the your React-Project-File workspace? (y/n)" positionCheck;
# if [ positionCheck -eq 'y' ]
if [ -d "src" ]; then
    cd "src/components";
        # 分別確認重複檔案
    if [ ! -d "$1" ]; then

        # 創建檔案
        mkdir $1 && touch $_/{$1.jsx,$1.less,$1.test.js};
        echo "[$1.jsx] , [$1.less] , [$1.test.js] has been added."
    else
        echo "In src/components , already has [$1] directory.";
        exit 1;
    fi
else
    echo "You must to change directory into root directory of React project.";
    exit 1;
fi;

