import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const autenticacion=sequelize.define('autenticacion',{
    nombre:{
        type: Sequelize.TEXT,
        primarykey:true        
    },
    password :{
        type: Sequelize.TEXT,
        primarykey:true    
    }
}, {
    timestamps:false
});

export default autenticacion;