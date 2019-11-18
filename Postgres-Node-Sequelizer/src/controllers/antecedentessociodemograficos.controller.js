import Antecedentessociodemograficos from '../models/antecedentessociodemograficos';

export async function createantecedentessociodemograficos(req, res) {
    const { etnia, vivesola, estadocivil, violenciaintrafamiliarreciente} = req.body;
    try {
        let newantecedentessociodemograficos = await Antecedentessociodemograficos.create({
            etnia,
            vivesola,
            estadocivil,
            violenciaintrafamiliarreciente
        }, {
            fields: ['etnia', 'vivesola', 'estadocivil','violenciaintrafamiliarreciente']
        });
        if (newantecedentessociodemograficos) {
            return res.json({
                message: 'antecedent socio-demografico creado correctamente',
                data: newantecedentessociodemograficos
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

export async function getantecedentessociodemograficos(req, res) {
    try {
        const antecedentessociodemograficos = await Antecedentessociodemograficos.findAll({
        attributes: ['idantecedentessociodemograficos','etnia', 'vivesola', 'estadocivil','violenciaintrafamiliarreciente']            
        });
        res.json({
            data: antecedentessociodemograficos
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function getOneantecedentessociodemograficos(req, res) {
    try {
        const { idantecedentessociodemograficos} = req.params;
        const antecedentessociodemograficos = await Antecedentessociodemograficos.findOne({
            attributes: ['idantecedentessociodemograficos','etnia', 'vivesola', 'estadocivil','violenciaintrafamiliarreciente'],
            where: {
                idantecedentessociodemograficos
            }
        });
        res.json({
            data: antecedentessociodemograficos
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}

export async function deleteantecedentessociodemograficos(req, res) {
    try {
        const { idantecedentessociodemograficos } = req.params;
        const deleteRowCount = await Antecedentessociodemograficos.destroy({
            attributes: ['idantecedentessociodemograficos','etnia', 'vivesola', 'estadocivil','violenciaintrafamiliarreciente'],
            where: {
                idantecedentessociodemograficos
            }
        });
        res.json({
            message: 'antecedente socio-demografico eliminado satisfactoriamente',
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

export async function updateantecedentessociodemograficos(req, res) {
    try {
        const { idantecedentessociodemograficos } = req.params;
        const { etnia, vivesola, estadocivil, violenciaintrafamiliarreciente} = req.body;

        const antecedentessociodemograficos= await Antecedentessociodemograficos.findAll({
            attributes: ['idantecedentessociodemograficos','etnia', 'vivesola', 'estadocivil','violenciaintrafamiliarreciente'],            
            where: {
                idantecedentessociodemograficos
            }
        });
        if (antecedentessociodemograficos.length >0) {
            antecedentessociodemograficos.forEach(async antecedentessociodemograficos => {
                await antecedentessociodemograficos.update({
                    attributes: ['idantecedentessociodemograficos','etnia', 'vivesola', 'estadocivil','violenciaintrafamiliarreciente'],            
                    idantecedentessociodemograficos,
                    etnia,
                    vivesola,
                    estadocivil,
                    violenciaintrafamiliarreciente
                });
            })
        }
        return res.json({
            message: 'Antecedente socio-demografico actualizado correctamente',
            data: antecedentessociodemograficos
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
        });
    }
}
