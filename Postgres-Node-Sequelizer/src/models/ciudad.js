import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import departamentoxciudad from './departamentoxciudad';
import contacto from './contacto';
import contactoadicional from './contactoadicional';

const ciudad=sequelize.define('ciudad',{
    idciudad:{
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
ciudad.hasMany(departamentoxciudad, { foreingKey: 'idciudad', sourceKey: 'idciudad'});
departamentoxciudad.belongsTo(ciudad, { foreingKey:'idciudad', sourceKey: 'idciudad'});

ciudad.hasMany(contacto, { foreingKey: 'idciudad', sourceKey: 'idciudad'});
contacto.belongsTo(ciudad, { foreingKey:'idciudad', sourceKey: 'idciudad'});

ciudad.hasMany(contactoadicional, { foreingKey: 'idciudad', sourceKey: 'idciudad'});
contactoadicional.belongsTo(ciudad, { foreingKey:'idciudad', sourceKey: 'idciudad'});


export default ciudad;