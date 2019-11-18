import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const departamentoxciudad= sequelize.define('departamentoxciudad',{
    iddepartamento:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    idciudad:{
        type: Sequelize.INTEGER,
        primarykey:true        
    }
}, {
    timestamps:false
});

export default departamentoxciudad;