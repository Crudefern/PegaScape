FROM node:21.7.1-alpine
# Change IP for your situation
ARG ip=144.24.47.134

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 80 for the application
EXPOSE 80
# EXPOSE 53

# Define the command to run the application
CMD [ "node", "start.js" , "--ip" ${ip}, "--webapplet", "--disable-dns"]
