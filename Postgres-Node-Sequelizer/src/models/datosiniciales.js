import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const datosiniciales=sequelize.define('datosiniciales',{
    iddatosiniciales:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    embarazoplaneado:{
        type: Sequelize.TEXT
    },
    fracasoelmetodoanticonceptivo:{
        type: Sequelize.TEXT
    },
    gruposanguineo:{
        type: Sequelize.TEXT
    },
    rh:{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
datosiniciales.hasMany(atencioncontrolprenatal, { foreingKey: 'iddatosiniciales', sourceKey: 'iddatosiniciales'});
atencioncontrolprenatal.belongsTo(datosiniciales, { foreingKey:'iddatosiniciales', sourceKey: 'iddatosiniciales'});

export default datosiniciales;