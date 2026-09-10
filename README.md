## Important: This is a dummy project all the passwords and cert uploaded are useless

# Run in one command
```bash
git clone https://github.com/MoHussam-865/DevOps-Project && \
cd DevOps-Project && \
docker build -t backend . && \
docker-compose up -d
```


# Step 1: On The Host you must have 
 - dir `./reverse-proxy/ssl` that have `nginx.crt & nginx.key`
 - dir `./reverse-proxy` that has `nginx.conf`
 - `db-password.txt` at `./` 

# Step 2: Create the backend image
 - run 
```bash
docker build -t backend
```
# Step 3: Grab a Cup of Coffee
# Step 4: Run The Project
 - run
```bash
docker-compose up
```

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


