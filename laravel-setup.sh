#!/bin/bash
if [ -z "$1" ]; then
      echo "Missing argument for directory name, usage: laravel-setup <directory>"
      exit -1
else
    folder=$1
    project=$2
    cd $folder
    if [ ! -f "$project/vendor/bin/sail" ]; then
        #docker run --rm --interactive --tty --volume $PWD/app:/app composer /bin/bash -c "cd /app && composer require laravel/sail --dev"
        echo "Installing laravel with sail into $folder"
		#docker run --rm \
        #    -v "$(pwd)":/opt -u $(id -u $USER):$(id -g $USER) \
        #    -w /opt \
        #    laravelsail/php81-composer:latest \
        #    bash -c "laravel new $1 --git && cd $1 && php ./artisan sail:install --devcontainer --with=mysql,mailhog,selenium"
        curl -s "https://laravel.build/$project?with=mysql,selenium,mailhog&devcontainer" | bash
        if [ $? -eq 0 ]; then
            echo "Adding default .gitignore"
            cd $project && curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/main/Laravel.gitignore >/dev/null
            echo "done, ready to code ;-)"
        else
            echo "Error creating docker env, aborting"
            exit -1
        fi
    else
	    echo "Sail already installed in $folder (doing nothing), are you sure it's a new project ?"
    fi
fi


