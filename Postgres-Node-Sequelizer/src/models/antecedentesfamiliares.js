import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const antecedentesfamiliares=sequelize.define('antecedentesfamiliares',{
    idantecedentesfamiliares:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    hipertension :{
        type: Sequelize.TEXT
    },
    cardiopatias :{
        type: Sequelize.TEXT
    },
    epilepsia:{
        type: Sequelize.TEXT
    },
    tuberculosis :{
        type: Sequelize.TEXT
    },
    gestacionesmultiples :{
        type: Sequelize.TEXT
    },
    enfermedadescongenitas :{
        type: Sequelize.TEXT
    },
    cualesenfermedadescongenitas :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
antecedentesfamiliares.hasMany(atencioncontrolprenatal, { foreingKey: 'idantecedentesfamiliares', sourceKey: 'idantecedentesfamiliares'});
atencioncontrolprenatal.belongsTo(antecedentesfamiliares, { foreingKey:'idantecedentesfamiliares', sourceKey: 'idantecedentesfamiliares'});

export default antecedentesfamiliares;