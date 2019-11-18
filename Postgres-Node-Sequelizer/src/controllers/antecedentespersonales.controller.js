import Antecedentespersonales from '../models/antecedentespersonales';

export async function createantecedentespersonales(req, res) {
    const { hipertension, cardiopatias, enfermedadesautoinmunes, tuberculosis, enfermedadestransmisionsexual, cualets, alergia, cualalergia, medicamentosactuales} = req.body;
    try {
        let newantecedentespersonales = await Antecedentespersonales.create({
            hipertension,
            cardiopatias,
            enfermedadesautoinmunes,
            tuberculosis,
            enfermedadestransmisionsexual,
            cualets,
            alergia,
            cualalergia,
            medicamentosactuales
        }, {
            fields: ['hipertension', 'cardiopatias', 'enfermedadesautoinmunes','tuberculosis','enfermedadestransmisionsexual','cualets','alergia','cualalergia','medicamentosactuales']
        });
        if (newantecedentespersonales) {
            return res.json({
                message: 'antecedentes inmunologicos creados correctamente',
                data: newantecedentespersonales
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

export async function getantecedentespersonales(req, res) {
    try {
        const antecedentespersonales = await Antecedentespersonales.findAll({
            attributes: ['idantecedentespersonales','hipertension', 'cardiopatias', 'enfermedadesautoinmunes','tuberculosis','enfermedadestransmisionsexual','cualets','alergia','cualalergia','medicamentosactuales']
            
        });
        res.json({
            data: antecedentespersonales
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function getOneantecedentespersonales(req, res) {
    try {
        const { idantecedentespersonales } = req.params;
        const antecedentespersonales = await Antecedentespersonales.findOne({
            attributes: ['idantecedentespersonales','hipertension', 'cardiopatias', 'enfermedadesautoinmunes','tuberculosis','enfermedadestransmisionsexual','cualets','alergia','cualalergia','medicamentosactuales'],
            where: {
                idantecedentespersonales
            }
        });
        res.json({
            data: antecedentespersonales
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function deleteantecedentespersonales(req, res) {
    try {
        const { idantecedentespersonales } = req.params;
        const deleteRowCount = await Antecedentespersonales.destroy({
            attributes: ['idantecedentespersonales','hipertension', 'cardiopatias', 'enfermedadesautoinmunes','tuberculosis','enfermedadestransmisionsexual','cualets','alergia','cualalergia','medicamentosactuales'],
            where: {
                idantecedentespersonales
            }
        });
        res.json({
            message: 'antecedente personal eliminado satisfactoriamente',
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

export async function updateantecedentespersonales(req, res) {
    try {
        const { idantecedentespersonales } = req.params;
        const { hipertension, cardiopatias, enfermedadesautoinmunes, tuberculosis, enfermedadestransmisionsexual, cualets, alergia, cualalergia, medicamentosactuales} = req.body;

        const antecedentespersonales= await Antecedentespersonales.findAll({
            attributes: ['idantecedentespersonales','hipertension', 'cardiopatias', 'enfermedadesautoinmunes','tuberculosis','enfermedadestransmisionsexual','cualets','alergia','cualalergia','medicamentosactuales'],
            where: {
                idantecedentespersonales
            }
        });
        if (antecedentespersonales.length >0) {
            antecedentespersonales.forEach(async antecedentespersonales => {
                await antecedentespersonales.update({
                    attributes: ['idantecedentespersonales','hipertension', 'cardiopatias', 'enfermedadesautoinmunes','tuberculosis','enfermedadestransmisionsexual','cualets','alergia','cualalergia','medicamentosactuales'],
                    idantecedentespersonales,
                    hipertension,
                    cardiopatias,
                    enfermedadesautoinmunes,
                    tuberculosis,
                    enfermedadestransmisionsexual,
                    cualets,
                    alergia,
                    cualalergia,
                    medicamentosactuales
                });
            })
        }
        return res.json({
            message: 'Antecedente personal actualizado correctamente',
            data: antecedentespersonales
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}
