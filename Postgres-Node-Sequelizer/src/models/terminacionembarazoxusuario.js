import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const terminacionembarazoxusuario= sequelize.define('terminacionembarazoxusuario',{
    idusuario:{
        type: Sequelize.INTEGER,
        primarykey:true
    },
    idterminoembarazo:{
        type: Sequelize.INTEGER,
        primarykey:true        
    }
}, {
    timestamps:false
});

export default terminacionembarazoxusuario;