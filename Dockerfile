# Use the official MySQL image from Docker Hub as the base image
FROM mysql:latest

# Set the root password for MySQL. WARNING: Do not use the below example password in a production environment, generate a strong password!
ENV MYSQL_ROOT_PASSWORD=my-secret-pw

# Optional: Set the default database to be created upon container startup
ENV MYSQL_DATABASE=mydatabase

# Optional: Set the default user and its password (do not use the below example passwords in a production environment)
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=my-user-password

# When the container starts, it will execute any `.sql` or `.sh` scripts found in /docker-entrypoint-initdb.d
# So you can place there your own init scripts.
# COPY ./init.sql /docker-entrypoint-initdb.d/
