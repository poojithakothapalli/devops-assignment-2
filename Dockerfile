# Step 1: Use an official Nginx image as the base
FROM nginx:latest

# Step 2: Copy your website files into Nginx's web directory
COPY . /usr/share/nginx/html

# Step 3: Expose port 80 (where Nginx serves content)
EXPOSE 80

# Step 4: Define the default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]

