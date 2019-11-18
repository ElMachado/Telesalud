import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const tipoafiliacionxusuario= sequelize.define('tipoafiliacionxusuario',{
    idtipoafiliacion:{
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

export default tipoafiliacionxusuario;