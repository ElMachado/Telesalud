import Antecedentesgo from '../models/antecedentesgo';

export async function getantecedentesgo(req, res) {
    try {
        const antecedentesgo = await Antecedentesgo.findAll({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria','infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios']
        });
        res.json({
            data: antecedentesgo
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function createantecedentesgo(req, res) {
    const { edadmenarquia, cirugiagenitourinaria, cualcirugiagenitourinaria, infertilidad, enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria, embarazosprevios } = req.body;
    try {
        let newantecedentesgo = await Antecedentesgo.create({
            edadmenarquia,
            cirugiagenitourinaria,
            cualcirugiagenitourinaria,
            infertilidad,
            enfermedadpelvicainflamatoria,
            cualenfermedadpelvicainflamatoria,
            embarazosprevios
        }, {
            fields: ['edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios']
        });
        if (newantecedentesgo) {
            return res.json({
                message: 'antecedentes Go creados correctamente',
                data: newantecedentesgo
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

export async function getOneantecedentesgo(req, res) {
    try {
        const { idantecedentesgo } = req.params;
        const antecedentesgo = await Antecedentesgo.findOne({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria','infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
            where: {
                idantecedentesgo
            }
        });
        res.json({
            data: antecedentesgo
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function deleteantecedentesgo(req, res) {
    try {
        const { idantecedentesgo } = req.params;
        const deleteRowCount = await Antecedentesgo.destroy({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria','infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
            where: {
                idantecedentesgo
            }
        });
        res.json({
            message: 'antecedente GO eliminado satisfactoriamente',
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

export async function updateantecedentesgo(req, res) {
    try {
        const { idantecedentesgo } = req.params;
        const { edadmenarquia, cirugiagenitourinaria, cualcirugiagenitourinaria, infertilidad, enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria, embarazosprevios } = req.body;

        const antecedentesgo= await Antecedentesgo.findAll({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria','infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
            where: {
                idantecedentesgo
            }
        });
        if (antecedentesgo.length >0) {
            antecedentesgo.forEach(async antecedentesgo => {
                await antecedentesgo.update({
                    attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria','infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
                    idantecedentesgo,
                    edadmenarquia,
                    cirugiagenitourinaria,
                    cualcirugiagenitourinaria,
                    infertilidad,
                    enfermedadpelvicainflamatoria,
                    cualenfermedadpelvicainflamatoria,
                    embarazosprevios
                });
            })
        }
        return res.json({
            message: 'Antecedente Go actualizado correctamente',
            data: antecedentesgo
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}