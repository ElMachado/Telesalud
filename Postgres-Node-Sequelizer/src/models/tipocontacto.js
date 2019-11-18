import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import contacto from './contacto';

const tipocontacto=sequelize.define('tipocontacto',{
    idtipocontacto:{
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
tipocontacto.hasMany(contacto, { foreingKey: 'idtipocontacto', sourceKey: 'idtipocontacto'});
contacto.belongsTo(tipocontacto, { foreingKey:'idtipocontacto', sourceKey: 'idtipocontacto'});

export default tipocontacto;