read -p "What OS are you using? " os
if [[ $os == "Ubuntu" ]]; then
    sudo apt install openssl php-common php-curl php-json php-mbstring php-mysql php-xml php-zip
    read -p "Enter project name" projectName
    composer create-project --prefer-dist laravel/laravel $projectName
    echo "\n"
    echo "Successfully created project at $(pwd)/${projectName}"
else
	echo "Support coming for other versions soon."
fi
