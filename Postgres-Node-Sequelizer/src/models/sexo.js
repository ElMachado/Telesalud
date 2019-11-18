import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import sexoxusuario from './sexoxusuario';

const sexo=sequelize.define('sexo',{
    idsexo:{
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
sexo.hasMany(sexoxusuario, { foreingKey: 'idsexo', sourceKey: 'idsexo'});
sexoxusuario.belongsTo(sexo, { foreingKey:'idsexo', sourceKey: 'idsexo'});

export default sexo;