const db = require('../config/config');
const User = {};
User.create = (user) =>{
    const sql = `
    INSERT INTO 
        users(
            email,
            name,
            birth_date,
            create_at,
            updated_at
        )
    VALUES($1,$2,$3,$4,$5) RETURNING ID
    `;
    return db.oneOrNone(sql, [
        user.email,
        user.name,
        user.birth_date,
        new Date,
        new Date
    ]);
}

module.exports = User;