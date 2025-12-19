// myapp/app.js
const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000;

// Cấu hình Pug làm template engine và thư mục chứa view
app.set('view engine', 'pug');
app.set('views', path.join(__dirname, 'views'));

// Định nghĩa route cho trang chủ
app.get('/', (req, res) => {
  res.render('home', { title: 'MyApp Home' });
});

// Khởi chạy server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

