// myapp/app.js
const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000;

// Configure Pug as the template engine and the directory for the views.
app.set('view engine', 'pug');
app.set('views', path.join(__dirname, 'views'));

// Define a route for the homepage.
app.get('/', (req, res) => {
  res.render('home', { title: 'MyApp Home' });
});

// Launch the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
