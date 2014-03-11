curl -sv -XPOST localhost:8080/api/v1/datapoints -d '[{
    "name": "archive.file.tracked",
    "timestamp": 1349109376,
    "value": 123,
    "tags":{"host":"test"}
},
{
    "name": "archive.file.search",
    "timestamp": 999,
    "value": 321,
    "tags":{"host":"test"}
}]'
