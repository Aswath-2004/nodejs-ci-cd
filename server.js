// server.js
//2nd Update
const express = require('express');
const app = express();
const PORT = 3000;

// Define the required /status endpoint
app.get('/status', (req, res) => {
  res.status(200).json({
    status: 'ok',
    message: 'Node.js API is running successfully inside Docker!',
    timestamp: new Date().toISOString()
  });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

// Optional: Graceful shutdown handler (good practice)
process.on('SIGINT', () => {
  console.log('API shutting down...');
  process.exit(0);
});
