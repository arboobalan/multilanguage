const express = require('express');
const router = express.Router();
const db = require("../config/db");

const getTranslations = (languageCode) => {
    return new Promise((resolve, reject) => {
        const query = 'SELECT title_of_the_content, select_language FROM m_lang WHERE language_code = ?';

        db.query(query, [languageCode], (err, results) => {
            if (err) {
                return reject(err);
            }
            const translations = {};
            results.forEach((row) => {
                translations[row.title_of_the_content] = row.select_language;
            });
            resolve(translations);
        });
    });
};

router.get('/', async (req, res) => {
    try {
        const translations = await getTranslations(req.lang);
        res.render('index', {
            title: translations['title'],
            greeting: translations['greeting'],
            select_language: translations['select_language'],
            locale: req.lang
        });
    } catch (error) {
        res.status(500).send('Internal Server Error');
    }
});

module.exports = router;