#!/bin/bash
if [ -z "$1" ]; then
      echo "Missing argument for directory name, usage: laravel-setup <directory>"
      exit -1
else
    if [ ! -f "$1/vendor/bin/sail" ]; then
        #docker run --rm --interactive --tty --volume $PWD/app:/app composer /bin/bash -c "cd /app && composer require laravel/sail --dev"
        echo "Installing laravel with sail into $1"
		docker run --rm \
            -v "$(pwd)":/opt -u $(id -u $USER):$(id -g $USER) \
            -w /opt \
            laravelsail/php81-composer:latest \
            bash -c "laravel new $1 && cd $1 && php ./artisan sail:install --devcontainer --with=mysql,mailhog,selenium"
		echo "Installation done, type the following command to start the server (http://localhost) : ./vendor/bin/sail up -d"
		echo "And replace 'php Artisan' commands by 'sail artisan'..."
    else
	    echo "Sail already installed in $1 (doing nothing), are you sure it's a new project ?"
    fi
fi


