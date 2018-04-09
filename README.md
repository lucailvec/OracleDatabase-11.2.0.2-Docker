# Introduction
The goal of this repo is to arrange the commands to run a container of Oracle DB ExpressEdition 11.2.0.2 with, rlwrap for handle arrow keyboardkeys and custom sql prompt with sqlplus.

# Step

First of all download the binary *Oracle Database Express Edition 11g Release 2 for Linux*  [here](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html). Copy the downloaded zip into *11.2.0.2/* folder.

Then:
```sh
$ ./buildDockerImage.sh -v 11.2.0.2 -x
$ ./add_rlwrap_2_image.sh
```
Thoose commands will build the image.

To run the container from the image use:
```sh
$ ./buildDockerContainer.sh
```

Then stop the container (it will save the db data in static_file folder):
```sh
docker stop oracle-xe
```
By default (buildDockerContainer.sh) the container is destroyed when stopped.

# Executing the environment

Change the sys and system psw administrator by change the DB_PSW in the start_container.sh.

The home where you refer to all "usefull" commands is $ORACLE_HOME, not $HOME.

Exec the start_container.sh program that start the containier with the default port for APAX 8080 and 1521 for the "other purpose". This command customize grab the customization of the prompt of the sqlplus from ./script/glogin.sql.


Warning:
* [sudos] the unix user must do some command with the sudo, other such as MacOS sudo is not required.
* [SELinux] If your system implement thoose security guard check [SELinux handson](https://www.projectatomic.io/blog/2015/06/using-volumes-with-docker-can-cause-problems-with-selinux/).

# Reference
[OracleDatabase](https://github.com/oracle/docker-images)
