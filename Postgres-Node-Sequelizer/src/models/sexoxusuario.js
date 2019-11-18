import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const sexoxusuario= sequelize.define('sexoxusuario',{
    idsexoxusuario:{
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

export default sexoxusuario;