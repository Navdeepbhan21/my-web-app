const express = require('express');
const app = express();

// Define the port the app will listen on
const PORT = 3000;

// Define a simple route for the app
app.get('/', (req, res) => {
  res.send(`
    <h1>Hello, Docker!</h1>
    <p>Student Name: Navdeep Bhan</p>
    <p>Student ID: 100930795</p>
  `);
});

// Make the app listen on the specified port
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
