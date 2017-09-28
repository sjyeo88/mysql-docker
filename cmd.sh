#Build Docker Image
docker build --tag mysql . 

#Create Local Volume
if ! [ -d /opt/mysql ]; then
sudo mkdir /opt/mysql
fi

##Run Container
docker run -d --name db-vol --volume /opt/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=!dutkak3 -p 3306:3306  mysql
