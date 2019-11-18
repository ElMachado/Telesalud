import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const antecedentespersonales=sequelize.define('antecedentespersonales',{
    idantecedentespersonales:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    hipertension :{
        type: Sequelize.TEXT
    },
    cardiopatias :{
        type: Sequelize.TEXT
    },
    enfermedadesautoinmunes:{
        type: Sequelize.TEXT
    },
    tuberculosis :{
        type: Sequelize.TEXT
    },
    enfermedadestransmisionsexual :{
        type: Sequelize.TEXT
    },
    cualets :{
        type: Sequelize.TEXT
    },
    alergia :{
        type: Sequelize.TEXT
    },
    cualalergia :{
        type: Sequelize.TEXT
    },
    medicamentosactuales :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
antecedentespersonales.hasMany(atencioncontrolprenatal, { foreingKey: 'idantecedentespersonales', sourceKey: 'idantecedentespersonales'});
atencioncontrolprenatal.belongsTo(antecedentespersonales, { foreingKey:'idantecedentespersonales', sourceKey: 'idantecedentespersonales'});

export default antecedentespersonales;