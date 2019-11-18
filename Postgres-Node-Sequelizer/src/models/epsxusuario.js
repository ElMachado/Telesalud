import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const epsxusuario= sequelize.define('epsxusuario',{
    ideps:{
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

export default epsxusuario;