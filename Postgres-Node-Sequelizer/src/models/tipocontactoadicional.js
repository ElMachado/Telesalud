import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import contactoadicional from './contactoadicional';

const tipocontactoadicional=sequelize.define('tipocontactoadicional',{
    idtipocontactoadicional:{
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
tipocontactoadicional.hasMany(contactoadicional, { foreingKey: 'idtipocontactoadicional', sourceKey: 'idtipocontactoadicional'});
contactoadicional.belongsTo(tipocontactoadicional, { foreingKey:'idtipocontactoadicional', sourceKey: 'idtipocontactoadicional'});

export default tipocontactoadicional;