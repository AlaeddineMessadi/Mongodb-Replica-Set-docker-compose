#!/bin/bash

mongo <<EOF
var config = {
    "_id": "rs0",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mongo1:27011",
            "priority": 1
        },
        {
            "_id": 2,
            "host": "mongo2:27012",
            "priority": 2
        },
        {
            "_id": 3,
            "host": "mongo3:27013",
            "priority": 3
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF