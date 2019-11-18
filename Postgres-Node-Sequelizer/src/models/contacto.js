import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import contactoxusuario from './contactoxusuario';

const contacto=sequelize.define('contacto',{
    idcontacto:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    idtipocontacto:{
        type: Sequelize.INTEGER,      
    },
    idzona:{
        type: Sequelize.INTEGER,       
    },
    direccion:{
        type: Sequelize.TEXT
    },
    telefono:{
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
    }
}, {
    timestamps:false
});

//relaciones
contacto.hasMany(contactoxusuario, { foreingKey: 'idcontacto', sourceKey: 'idcontacto'});
contactoxusuario.belongsTo(contacto, { foreingKey:'idcontacto', sourceKey: 'idcontacto'});

export default contacto;