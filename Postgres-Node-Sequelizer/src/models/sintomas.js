import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const sintomas=sequelize.define('sintomas',{
    idsintomas:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    cefalea :{
        type: Sequelize.TEXT
    },
    transtornosvisuales :{
        type: Sequelize.TEXT
    },
    transtornosauditivos :{
        type: Sequelize.TEXT
    },
    sangradovaginal :{
        type: Sequelize.TEXT
    },
    sintomasurinarios :{
        type: Sequelize.TEXT
    },
    movimientosfetales :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
sintomas.hasMany(atencioncontrolprenatal, { foreingKey: 'idsintomas', sourceKey: 'idsintomas'});
atencioncontrolprenatal.belongsTo(sintomas, { foreingKey:'idsintomas', sourceKey: 'idsintomas'});

export default sintomas;