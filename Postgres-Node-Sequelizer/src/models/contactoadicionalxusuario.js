import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const contactoadicionalxusuario=sequelize.define('contactoadicionalxusuario',{
    idusuario:{
        type: Sequelize.INTEGER,
        primarykey:true
    },
    idcontactoadicional:{
        type: Sequelize.INTEGER,
        primarykey:true        
    }
}, {
    timestamps:false
});

export default contactoadicionalxusuario;