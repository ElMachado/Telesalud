import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const tipoidentificacionxusuario= sequelize.define('tipoidentificacionxusuario',{
    idtipoidentificacion:{
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

export default tipoidentificacionxusuario;