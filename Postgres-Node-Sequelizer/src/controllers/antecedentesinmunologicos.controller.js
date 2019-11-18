import Antecedentesinmunologicos from '../models/antecedentesinmunologicos';

export async function createantecedentesinmunologicos(req, res) {
    const { vacunaantirubeola, vacunaantitetanica, vacunaaplicadaultimolustro } = req.body;
    try {
        let newantecedentesinmunologicos = await Antecedentesinmunologicos.create({
            vacunaantirubeola,
            vacunaantitetanica,
            vacunaaplicadaultimolustro
        }, {
            fields: ['vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro']
        });
        if (newantecedentesinmunologicos) {
            return res.json({
                message: 'antecedentes inmunologicos creados correctamente',
                data: newantecedentesinmunologicos
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

export async function getantecedentesinmunologicos(req, res) {
    try {
        const antecedentesinmunologicos = await Antecedentesinmunologicos.findAll({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro']
        });
        res.json({
            data: antecedentesinmunologicos
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function getOneantecedentesinmunologicos(req, res) {
    try {
        const { idantecedentesinmunologicos } = req.params;
        const antecedentesinmunologicos = await Antecedentesinmunologicos.findOne({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
            where: {
                idantecedentesinmunologicos
            }
        });
        res.json({
            data: antecedentesinmunologicos
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function deleteantecedentesinmunologicos(req, res) {
    try {
        const { idantecedentesinmunologicos } = req.params;
        const deleteRowCount = await Antecedentesinmunologicos.destroy({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
            where: {
                idantecedentesinmunologicos
            }
        });
        res.json({
            message: 'antecedente inmunologico eliminado satisfactoriamente',
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

export async function updateantecedentesinmunologicos(req, res) {
    try {
        const { idantecedentesinmunologicos } = req.params;
        const { vacunaantirubeola, vacunaantitetanica, vacunaaplicadaultimolustro } = req.body;

        const antecedentesinmunologicos= await Antecedentesinmunologicos.findAll({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
            where: {
                idantecedentesinmunologicos
            }
        });
        if (antecedentesinmunologicos.length >0) {
            antecedentesinmunologicos.forEach(async antecedentesinmunologicos => {
                await antecedentesinmunologicos.update({
                    attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
                    idantecedentesinmunologicos,
                    vacunaantirubeola,
                    vacunaantitetanica,
                    vacunaaplicadaultimolustro
                });
            })
        }
        return res.json({
            message: 'Antecedente inmunologico actualizado correctamente',
            data: antecedentesinmunologicos
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}