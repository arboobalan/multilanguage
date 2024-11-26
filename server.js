const express = require('express');
const path = require('path');
const app = express();

const dotenv = require('dotenv');
dotenv.config();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use((req, res, next) => {
    const lang = req.query.lang ||  'en';
    req.lang = lang;
    next();
});

const langController = require('./controller/langcontroller');
app.use('/', langController);

const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});