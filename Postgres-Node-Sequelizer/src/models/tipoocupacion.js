import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import tipoocupacionxusuario from './tipoocupacionxusuario';

const tipoocupacion=sequelize.define('tipoocupacion',{
    idtipoocupacion:{
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
tipoocupacion.hasMany(tipoocupacionxusuario, { foreingKey: 'idtipoocupacion', sourceKey: 'idtipoocupacion'});
tipoocupacionxusuario.belongsTo(tipoocupacion, { foreingKey:'idtipoocupacion', sourceKey: 'idtipoocupacion'});

export default tipoocupacion;