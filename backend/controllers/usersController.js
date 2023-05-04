const User = require('../models/user');

module.exports = {
    async register(req, res, nex){
        try {
            const user = req.body;
            const data = await User.create(user);
            return  res.status(201).json({
                success: true,
                message: 'El registro se realizo correctamente',
                data: data.id
            })
        } catch (error) {
            console.log(`Error: ${error}`);
            return res.status(501).json({
                success: false,
                message: 'Hubo un error con  el registro de usuario',
                error: error
            })
        }
    }

}




