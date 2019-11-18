import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import contacto from './contacto';

const zona=sequelize.define('zona',{
    idzona:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    descripcion:{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

zona.hasMany(contacto, { foreingKey: 'idzona', sourceKey: 'idzona'});
contacto.belongsTo(zona, { foreingKey:'idzona', sourceKey: 'idzona'});

export default zona;