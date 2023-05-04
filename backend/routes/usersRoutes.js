const UsersController = require('../controllers/usersController');

module.exports = (app) => {

    app.post('/api/users/create', UsersController.register);
}