___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Local Storage Source Data",
  "description": "The value is set to the value of the local storage key within the \"source_data\" object with the matching name.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "Use source data tag template to save all source data into the (source_data) object in the local storage",
    "displayName": ""
  },
  {
    "type": "TEXT",
    "name": "localStorageKey",
    "displayName": "Local Storage Key",
    "simpleValueType": true,
    "help": "Enter the key from the \"source_data\" object in the local storage you want to get it\u0027s value (e.g. utm_source, utm_medium)",
    "alwaysInSummary": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

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


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "source_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "testing"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/15/2024, 12:21:05 PM


