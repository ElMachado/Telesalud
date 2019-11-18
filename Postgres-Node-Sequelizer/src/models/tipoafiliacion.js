import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import tipoafiliacionxusuario from './tipoafiliacionxusuario';

const tipoafiliacion=sequelize.define('tipoafiliacion',{
    idtipoafiliacion:{
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
tipoafiliacion.hasMany(tipoafiliacionxusuario, { foreingKey: 'idtipoafiliacion', sourceKey: 'idtipoafiliacion'});
tipoafiliacionxusuario.belongsTo(tipoafiliacion, { foreingKey:'idtipoafiliacion', sourceKey: 'idtipoafiliacion'});

export default tipoafiliacion;