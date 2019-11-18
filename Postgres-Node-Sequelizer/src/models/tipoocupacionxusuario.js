import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const tipoocupacionxusuario= sequelize.define('tipoocupacionxusuario',{
    idtipoocupacion:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    idusuario:{
        type: Sequelize.INTEGER,
        primarykey:true
    }
}, {
    timestamps:false
});

export default tipoocupacionxusuario;