import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const examenfisico=sequelize.define('examenfisico',{
    idexamenfisico:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    frecuenciarespiratoria :{
        type: Sequelize.TEXT
    },
    presionarterialsistolica :{
        type: Sequelize.TEXT
    },
    presionarterialdiastolica :{
        type: Sequelize.TEXT
    },
    examenesmamas :{
        type: Sequelize.TEXT
    },
    tactovaginal :{
        type: Sequelize.TEXT
    },
    observacionesexamenfisico :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
examenfisico.hasMany(atencioncontrolprenatal, { foreingKey: 'idexamenfisico', sourceKey: 'idexamenfisico'});
atencioncontrolprenatal.belongsTo(examenfisico, { foreingKey:'idexamenfisico', sourceKey: 'idexamenfisico'});

export default examenfisico;