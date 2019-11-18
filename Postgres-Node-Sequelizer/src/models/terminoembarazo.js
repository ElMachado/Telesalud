import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import terminacionembarazoxusuario from './terminacionembarazoxusuario';

const terminoembarazo=sequelize.define('terminoembarazo',{
    idterminoembarazo:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    razonterminacionembarazo:{
        type: Sequelize.TEXT
    },
    muertematerna:{
        type: Sequelize.TEXT
    },
    sexodelbebe:{
        type: Sequelize.TEXT
    },
    muertefetalparto:{
        type: Sequelize.TEXT
    },
    nivelatencionparto:{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
terminoembarazo.hasMany(terminacionembarazoxusuario, { foreingKey: 'idterminoembarazo', sourceKey: 'idterminoembarazo'});
terminacionembarazoxusuario.belongsTo(terminoembarazo, { foreingKey:'idterminoembarazo', sourceKey: 'idterminoembarazo'});

export default terminoembarazo;