import Autenticacion from '../models/autenticacion';

export async function getautenticacion(req, res) {
    try {
        const autenticacion = await Autenticacion.findAll({
            attributes: ['nombre', 'password']
        });
        res.json({
            data: autenticacion
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function createautenticacion(req, res) {
    const { nombre,password } = req.body;
    try {
        let newautenticacion = await Autenticacion.create({
            nombre,
            password
        }, {
            fields: ['nombre','password']
        });
        if (newautenticacion) {
            return res.json({
                message: 'usuario creados correctamente',
                data: newautenticacion
            });
        }
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function getOneautenticacion(req, res) {
    try {
        const { nombre } = req.params;
        const autenticacion = await Autenticacion.findOne({
            attributes: ['nombre', 'password'],
            where: {
                nombre
            }
        });
        res.json({
            data: autenticacion
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function deleteautenticacion(req, res) {
    try {
        const { nombre } = req.params;
        const deleteRowCount = await Autenticacion.destroy({
            attributes: ['nombre', 'password'],
            where: {
                nombre
            }
        });
        res.json({
            message: 'usuario eliminado satisfactoriamente',
            count: deleteRowCount
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function updateautenticacion(req, res) {
    try {
        const { nombre } = req.params;
        const { password } = req.body;

        const autenticacion= await Autenticacion.findAll({
            attributes: ['nombre', 'password'],
            where: {
                nombre
            }
        });
        if (autenticacion.length >0) {
            autenticacion.forEach(async autenticacion => {
                await autenticacion.update({
                    attributes: ['nombre', 'password'],
                    nombre,
                    password
                });
            })
        }
        return res.json({
            message: 'usuario actualizado correctamente',
            data: autenticacion
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}