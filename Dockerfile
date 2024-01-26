# Use Node.js 18 base image 
FROM node:18-alpine
 
# Set working directory 
WORKDIR /app 
 
# Copy package.json and package-lock.json to work directory 
COPY package*.json ./ 
 
# Install dependencies 
RUN npm install 
 
# Copy the rest of the application code 
COPY . . 
 
# Expose the port your app will run on 
EXPOSE 3000 
 
# Command to run the application 
CMD ["npm", "run", "dev"]