import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const paisxdepartamento= sequelize.define('paisxdepartamento',{
    idpais:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    iddepartamento:{
        type: Sequelize.INTEGER,
        primarykey:true        
    }
}, {
    timestamps:false
});

export default paisxdepartamento;