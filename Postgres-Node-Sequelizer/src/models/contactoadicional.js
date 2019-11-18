import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import contactoadicionalxusuario from './contactoadicionalxusuario';

const contactoadicional=sequelize.define('contactoadicional',{
    idcontactoadicional:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    idtipocontactoadicional:{
        type: Sequelize.INTEGER,      
    },
    telefono:{
        type: Sequelize.TEXT
    },
    celular:{
        type: Sequelize.TEXT
    },
    correo:{
        type: Sequelize.TEXT
    },
    direccion:{
        type: Sequelize.TEXT
    },
    idpais:{
        type: Sequelize.INTEGER,      
    },
    iddepartamento:{
        type: Sequelize.INTEGER,     
    },
    idciudad:{
        type: Sequelize.INTEGER,    
    },
    otros:{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
contactoadicional.hasMany(contactoadicionalxusuario, { foreingKey: 'idcontactoadicional', sourceKey: 'idcontactoadicional'});
contactoadicionalxusuario.belongsTo(contactoadicional, { foreingKey:'idcontactoadicional', sourceKey: 'idcontactoadicional'});

export default contactoadicional;