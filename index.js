const express = require('express');
const app = express();
const dotenv = require('dotenv');
dotenv.config();
const port = process.env.PORT || 5001;

app.get('/', (req, res) => {
    res.send('<h2>::Node Docker::</h2>')
})

app.listen(port, () => {
    console.log(`Server has started on port: ${port}`)
});