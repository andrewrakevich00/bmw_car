const express = require("express");
const app = express();
const port = 3000;

app.use(express.static(__dirname));

app.listen(port, '0.0.0.0', () => {
    console.log(`Server running on http://localhost:${port}`);
});

