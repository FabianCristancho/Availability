const express = require('express');
const app = express();
const port = 3000;
const sleep = (waitTimeInMs) => new Promise(resolve => setTimeout(resolve, waitTimeInMs));


app.get('/', (req, res) => { 
     let pause = randomIntInc(1,5000);
     sleep(randomIntInc(1,5000)).then(() => {
          res.json({"name": 'server nodejs', "wait_time(ms)":pause, "other_json":"OK!"});
     });
});

function randomIntInc(low, high) {
     return Math.floor(Math.random() * (high - low + 1) + low)
}

var server = app.listen(port, () => console.log(`Server listening on port ${port}`));