# Use the base image you specified
FROM soulteary/sqlite-wordpress

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY ./wordpress /var/www/html

# Expose the port the app runs on
EXPOSE 80

# Start the WordPress server
CMD ["apache2-foreground"]
