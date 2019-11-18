import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import tipoidentificacionxusuario from './tipoidentificacionxusuario';

const tipoidentificacion=sequelize.define('tipoidentificacion',{
    idtipoidentificacion:{
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
tipoidentificacion.hasMany(tipoidentificacionxusuario, { foreingKey: 'idtipoidentificacion', sourceKey: 'idtipoidentificacion'});
tipoidentificacionxusuario.belongsTo(tipoidentificacion, { foreingKey:'idtipoidentificacion', sourceKey: 'idtipoidentificacion'});

export default tipoidentificacion;