// Enter your template code here.
const localStorage = require('localStorage');
const log = require('logToConsole');
const JSON = require('JSON');
const obj = require('Object');

const key = data.localStorageKey;
const objectString = localStorage.getItem('source_data');

const object = JSON.parse(objectString);
//log('object = ');
//log(object);

const keys = obj.keys(object);
const values = obj.values(object);

var index;

for (let i = 0; i < keys.length; i++) {
    if (keys[i] === key) {
//        log("The value of ", key, "is found at index ", i);
        index = i;
        break;
    }
}

return values[index];