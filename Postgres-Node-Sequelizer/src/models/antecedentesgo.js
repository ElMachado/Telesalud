import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const antecedentesgo=sequelize.define('antecedentesgo',{
    idantecedentesgo:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    edadmenarquia:{
        type: Sequelize.INTEGER
    },
    cirugiagenitourinaria :{
        type: Sequelize.TEXT
    },
    cualcirugiagenitourinaria :{
        type: Sequelize.TEXT
    },
    infertilidad:{
        type: Sequelize.TEXT
    },
    enfermedadpelvicainflamatoria :{
        type: Sequelize.TEXT
    },
    cualenfermedadpelvicainflamatoria :{
        type: Sequelize.TEXT
    },
    embarazosprevios :{
        type: Sequelize.INTEGER
    }
}, {
    timestamps:false
});

//relaciones
antecedentesgo.hasMany(atencioncontrolprenatal, { foreingKey: 'idantecedentesgo', sourceKey: 'idantecedentesgo'});
atencioncontrolprenatal.belongsTo(antecedentesgo, { foreingKey:'idantecedentesgo', sourceKey: 'idantecedentesgo'});

export default antecedentesgo;