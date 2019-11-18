import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const habitos=sequelize.define('habitos',{
    idhabitos:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    fumadoraactiva :{
        type: Sequelize.TEXT
    },
    fumadorapasiva :{
        type: Sequelize.TEXT
    },
    consumedrogas :{
        type: Sequelize.TEXT
    },
    cualesdrogas :{
        type: Sequelize.TEXT
    },
    consumoalcohol :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
habitos.hasMany(atencioncontrolprenatal, { foreingKey: 'idhabitos', sourceKey: 'idhabitos'});
atencioncontrolprenatal.belongsTo(habitos, { foreingKey:'idhabitos', sourceKey: 'idhabitos'});

export default habitos;