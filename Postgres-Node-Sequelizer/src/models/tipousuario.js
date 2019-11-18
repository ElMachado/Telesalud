import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import tipousuarioxusuario from './tipousuarioxusuario';

const tipousuario=sequelize.define('tipousuario',{
    idtipousuario:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    descripcion:{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
tipousuario.hasMany(tipousuarioxusuario, { foreingKey: 'idtipousuario', sourceKey: 'idtipousuario'});
tipousuarioxusuario.belongsTo(tipousuario, { foreingKey:'idtipousuario', sourceKey: 'idtipousuario'});

export default tipousuario;