# Sử dụng ảnh nền Node.js đã được build sẵn (dòng lệnh FROM)
FROM node:18-alpine

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Copy package.json và package-lock.json (nếu có) để cài đặt dependencies trước, tận dụng cache
COPY package*.json ./

# Cài đặt các gói cần thiết
RUN npm install

# Copy toàn bộ mã nguồn (bao gồm app.js, thư mục views, v.v.) vào container
COPY . .

# Mở cổng ứng dụng (phù hợp với PORT mà Node.js sẽ lắng nghe)
EXPOSE 3000

# Chạy ứng dụng khi container khởi động
CMD ["node", "app.js"]

