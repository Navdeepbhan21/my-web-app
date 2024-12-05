# Step 1: Use the official Node.js image as the base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /labone

# Step 3: Copy package.json and package-lock.json (if exists) to the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port the app will run on
EXPOSE 3000

# Step 7: Command to run the application
CMD ["npm", "start"]
