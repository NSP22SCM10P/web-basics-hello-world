'use strict';

const express = require('express');

// Constants
const PORT = 9090;
const HOST = '0.0.0.0';
//document.body.style.background = "blue";
// App

const app = express();
app.get('/', (req, res) => {
  const html = `
    <html>
      <head>
        <style>
          body {
            background-color: #e6e6e6;
          }
          img {
            max-width: 100%;
          }
        </style>
      </head>
      <body>
        <h1>Hello World</h1>
        <p>Welcome to my website!</p>
        <img src="web-basics-hello-world/example.jpg" alt="My Image">
      </body>
    </html>
  `;
  res.send(html);
});

app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});

//nidhi nnn