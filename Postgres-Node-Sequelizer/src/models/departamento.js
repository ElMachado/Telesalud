import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import departamentoxciudad from './departamentoxciudad';
import paisxdepartamento from './paisxdepartamento';
import contacto from './contacto';
import contactoadicional from './contactoadicional';

const departamento=sequelize.define('departamento',{
    iddepartamento:{
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
departamento.hasMany(departamentoxciudad, { foreingKey: 'iddepartamento', sourceKey: 'iddepartamento'});
departamentoxciudad.belongsTo(departamento, { foreingKey:'iddepartamento', sourceKey: 'iddepartamento'});

departamento.hasMany(paisxdepartamento, { foreingKey: 'iddepartamento', sourceKey: 'iddepartamento'});
paisxdepartamento.belongsTo(departamento, { foreingKey:'iddepartamento', sourceKey: 'iddepartamento'});

departamento.hasMany(contacto, { foreingKey: 'iddepartamento', sourceKey: 'iddepartamento'});
contacto.belongsTo(departamento, { foreingKey:'iddepartamento', sourceKey: 'iddepartamento'});

departamento.hasMany(contactoadicional, { foreingKey: 'iddepartamento', sourceKey: 'iddepartamento'});
contactoadicional.belongsTo(departamento, { foreingKey:'iddepartamento', sourceKey: 'iddepartamento'});


export default departamento;