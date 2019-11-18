import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const contactoxusuario=sequelize.define('contactoxusuario',{
    idusuario:{
        type: Sequelize.INTEGER,
        primarykey:true
    },
    idcontacto:{
        type: Sequelize.INTEGER,
        primarykey:true        
    }
}, {
    timestamps:false
});

export default contactoxusuario;