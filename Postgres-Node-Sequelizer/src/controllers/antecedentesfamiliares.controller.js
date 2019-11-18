import Antecedentesfamiliares from '../models/antecedentesfamiliares';

export async function getantecedentesfamiliares(req, res) {
    try {
        const antecedentesfamiliares = await Antecedentesfamiliares.findAll({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas']
        });
        res.json({
            data: antecedentesfamiliares
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function createantecedentesfamiliares(req, res) {
    const { hipertension, cardiopatias, epilepsia, tuberculosis, gestacionesmultiples, enfermedadescongenitas, cualesenfermedadescongenitas } = req.body;
    try {
        let newantecedentesfamiliares = await Antecedentesfamiliares.create({
            hipertension,
            cardiopatias,
            epilepsia,
            tuberculosis,
            gestacionesmultiples,
            enfermedadescongenitas,
            cualesenfermedadescongenitas
        }, {
            fields: ['hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas']
        });
        if (newantecedentesfamiliares) {
            return res.json({
                message: 'antecedentes familiares creados correctamente',
                data: newantecedentesfamiliares
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

export async function getOneantecedentesfamiliares(req, res) {
    try {
        const { idantecedentesfamiliares } = req.params;
        const antecedentesfamiliares = await Antecedentesfamiliares.findOne({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
            where: {
                idantecedentesfamiliares
            }
        });
        res.json({
            data: antecedentesfamiliares
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function deleteantecedentesfamiliares(req, res) {
    try {
        const { idantecedentesfamiliares } = req.params;
        const deleteRowCount = await Antecedentesfamiliares.destroy({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
            where: {
                idantecedentesfamiliares
            }
        });
        res.json({
            message: 'antecedente familiar eliminado satisfactoriamente',
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

export async function updateantecedentesfamiliares(req, res) {
    try {
        const { idantecedentesfamiliares } = req.params;
        const { hipertension, cardiopatias, epilepsia, tuberculosis, gestacionesmultiples, enfermedadescongenitas, cualesenfermedadescongenitas } = req.body;

        const antecedentesfamiliares= await Antecedentesfamiliares.findAll({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
            where: {
                idantecedentesfamiliares
            }
        });
        if (antecedentesfamiliares.length >0) {
            antecedentesfamiliares.forEach(async antecedentesfamiliares => {
                await antecedentesfamiliares.update({
                    attributes: ['idantecedentesfamiliares','hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
                    idantecedentesfamiliares,
                    hipertension,
                    cardiopatias,
                    epilepsia,
                    tuberculosis,
                    gestacionesmultiples,
                    enfermedadescongenitas,
                    cualesenfermedadescongenitas
                });
            })
        }
        return res.json({
            message: 'Antecedente familiar actualizado correctamente',
            data: antecedentesfamiliares
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

