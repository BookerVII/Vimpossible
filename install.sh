#!/bin/bash
cd ~ && mkdir -p .vim/{bundle,autoload,view} 
cd ~ && mkdir Vimpossible
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/Vimpossible && git clone https://github.com/powerline/powerline.git && git clone https://github.com/NLKNguyen/papercolor-16.git
cat ~/Vimpossible/.bashrc >> ~/.bashrc
cat ~/Vimpossible/.vimrc >> ~/.vimrc
cd ~/Vimpossible/NLKNguyen/papercolor-16/gnome-terminal && ./base16-papercolor-dark.sh
cd ~/Vimpossible && cp PaperColor.vim ~/.vim/bundle//vim-airline-themes/autoload/airline/themes/
cd ~/Vimpossible && cp papercolor.vim ~/.vim/bundle//vim-airline-themes/autoload/airline/themes/
echo "Dear User, \n please do the following steps finish up the process \n 1) vim +PluginInstall +qall \n 2)"

###REQUIRES FUCKIGN PYTHON FUCK ME!!!



# Set the URL for the frontend and backend. By default these should be the
# same. Note: Do NOT add a protocol like http or https. This is done automatically
# and either way: SSL is mandatory.
COYO_BACKEND_URL=team-service.gocoyo.com
COYO_FRONTEND_URL=team-service.gocoyo.com

# Specifies the profile. Might be either 'prod' or 'dev'. In production
# mode this should not be set to dev.
COYO_PROFILE=prod

# Some management features and tools e.g. the logging interface are protected
# by a basic auth username and password. We STRONGLY advice you to change
# the password.
COYO_MANAGEMENT_USER=admin
COYO_MANAGEMENT_PASSWORD=jshdbf8s7dhfisadfniadf87sd

# Set the name, username and password of the database. Because the database
# can be accessed via its port (5432) we STRONGLY advice you to change the
# password.
COYO_DB_NAME=coyo
COYO_DB_USER=postgres
COYO_DB_PASSWORD=CoyoappIsCool

COYO_FILE_PORT=27017
COYO_FILE_DATABASE=coyo-files

# Set a folder for the datastore. All data of the database, search engine,
# uploads etc. is persisted here. The path can be either absolute or relative
# to the folder of this script.
COYO_DATA_STORAGE=./coyo-data

# Configure the mail server so Coyo can send emails to all users.
COYO_MAIL_FROM=Coyo <mailman@example.com>
COYO_MAIL_HOST=console
COYO_MAIL_USERNAME=
COYO_MAIL_PASSWORD=
COYO_MAIL_PORT=25
COYO_MAIL_PROTOCOL=smtp

# SSL certificate file. This must contain a private key followed by a public certificate.
COYO_CERT_FILE=./cert.pem

# Configure the interval to run the backup and where it should be stored.
BACKUP_CRON=0 30 3 * * *
BACKUP_PATH=/srv/backup

# Configure the http session timeout
COYO_SESSION_REMEMBER_TIMEOUT=600000

# The ElasticSearch heap size
ES_HEAP_SIZE=2g
# The ELK (log aggregation) ElasticSearch heap size
ES_LOGS_HEAP_SIZE=1g

# COYO Java opts used for backend
COYO_JAVA_OPTS=-Xmx2g -server
# Java opts used for COYO push service
COYO_PUSH_JAVA_OPTS=-Xmx1g -server
# Java opts used for COYO Backend service
COYO_BACKUP_JAVA_OPTS=-Xmx1g -server

# Maximum number of active connections that can be allocated from this pool at the same time.
COYO_DB_MAX_ACTIVE_CONNECTIONS=100

# Maximum allowed connections in general
COYO_DB_MAX_CONNECTIONS=400

# Sets the transaction strategy to asynchronous.
COYO_DB_SYNCHRONOUS_COMMIT=false

# The shared buffers should be an anount between 25% and 40% of your RAM configured.
COYO_DB_SHARED_BUFFERS=512MB

# The work memory is used for large querys and sorting within the database.
COYO_DB_WORK_MEM=512MB

# The ActiveMQ concurrent connections limit.
COYO_ACTIVEMQ_MAX_CONNECTIONS=100000

# The multiplier used by ActiveMQ to calculate the effective read heart-beat timeout.
COYO_ACTIVEMQ_HB_GRACE_PERIOD_MULTIPLIER=2.5

# The init memory in MB that ActiveMQ takes when start.
COYO_ACTIVEMQ_MIN_MEMORY=768

# The max memory in MB that ActiveMQ can take.
COYO_ACTIVEMQ_MAX_MEMORY=2048

# The log level of the ActiveMQ.
COYO_ACTIVEMQ_LOGLEVEL=WARN

# Maximum amount of worker threads.
COYO_SERVER_MAX_THREADS=200

# Indicate multiple backend instances.
COYO_BACKEND_CLUSTER=false

# Enable Http Content-Security-Policy Header. Disabled, if blank.
COYO_HTTP_CONTENT_SECURITY_POLICY=

# Enable Http Transport Security Header to include subdomains. True by default, set false (in lower case) to disabled.
COYO_HTTP_TRANSPORT_SECURITY_INCLUDE_SUBDOMAINS=true


# Number of parallel executed push notifications
COYO_PUSH_THREAD_LIMIT=10

# Keep logs for how many days (12 weeks * 7 days = 84 days)
ES_LOGS_KEEP_DAYS=84

# Limit Upload size
SPRING_HTTP_MULTIPART_MAX_FILE_SIZE=300Mb
SPRING_HTTP_MULTIPART_MAX_REQUEST_SIZE=300Mb
