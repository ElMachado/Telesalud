import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const examenes=sequelize.define('examenes',{
    idexamenes:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    traepruebaantigenohepatitisb :{
        type: Sequelize.TEXT
    },
    resultadopruebaantigenohepatitisb :{
        type: Sequelize.TEXT
    },
    traepruebavih :{
        type: Sequelize.TEXT
    },
    resultadovih :{
        type: Sequelize.TEXT
    },
    examencitologiareciente :{
        type: Sequelize.TEXT
    },
    observacioncitologia :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
examenes.hasMany(atencioncontrolprenatal, { foreingKey: 'idexamenes', sourceKey: 'idexamenes'});
atencioncontrolprenatal.belongsTo(examenes, { foreingKey:'idexamenes', sourceKey: 'idexamenes'});

export default examenes;