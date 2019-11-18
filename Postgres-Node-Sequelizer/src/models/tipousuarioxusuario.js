import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const tipousuarioxusuario= sequelize.define('tipousuarioxusuario',{
    idtipousuario:{
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

export default tipousuarioxusuario;