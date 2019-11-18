import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const antecedentessociodemograficos=sequelize.define('antecedentessociodemograficos',{
    idantecedentessociodemograficos:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    etnia :{
        type: Sequelize.TEXT
    },
    vivesola :{
        type: Sequelize.TEXT
    },
    estadocivil :{
        type: Sequelize.TEXT
    },
    violenciaintrafamiliarreciente :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
antecedentessociodemograficos.hasMany(atencioncontrolprenatal, { foreingKey: 'idantecedentessociodemograficos', sourceKey: 'idantecedentessociodemograficos'});
atencioncontrolprenatal.belongsTo(antecedentessociodemograficos, { foreingKey:'idantecedentessociodemograficos', sourceKey: 'idantecedentessociodemograficos'});

export default antecedentessociodemograficos;