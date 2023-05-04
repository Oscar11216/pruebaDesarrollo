const promise = require('bluebird');
const options = {
    promiseLib: promise,
    query: (e) => {}
}
const pgp = require('pg-promise')(options);
const types = pgp.pg.types;
types.setTypeParser(1114, function(stringValue){
    return stringValue;
}); 

const databaseConfig = {
    //'host': '192.168.101.4',
    'host': 'localhost',
    'port': 5432,
    'database': 'italentt',
    'user': 'postgres',
    'password': '1234'
};

const db = pgp(databaseConfig);

module.exports = db;