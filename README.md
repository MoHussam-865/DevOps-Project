## Important: This is a dummy project all the passwords and cert uploaded are useless

## We need to build an three tier application (backend,Database,proxy) with docker principles

 - The backend docker file write in multi-stage approach.
 - The database creadential is in your host machine.
 - Make sure that proxy is up and running in https protocol and the configuration files is in your host machine.
 - Kindly make sure that each container is in seperate network.
 - Make sure that all project is up and down with one command.

Note:You will find backend files in the same path of the project.

# the code How to build
 - go build -v -o /my-app/backend ./...
 - CGO_ENABLED=0 GOOS=linux go build -v -o /my-app/backend ./...



# the backend needs
 - database 
  - container name db
  - image mysql
  - port 3306
  - database name /example
  - user root
  - Env
	- the database password is read from file, the file name must be set as env value named exactly DB_PASSWORD_FILE

# backend listen on port 8000


# On Host
- create dir for the nginx config file 
    lets say  reverse-proxy/nginx.conf
- create dir for the cert 
    lets say reverse-proxy/ssl/*
- create file named db-password.txt that has the database password