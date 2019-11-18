import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import epsxusuario from './epsxusuario';

const eps=sequelize.define('eps',{
    ideps:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    descripcion:{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
eps.hasMany(epsxusuario, { foreingKey: 'ideps', sourceKey: 'ideps'});
epsxusuario.belongsTo(eps, { foreingKey:'ideps', sourceKey: 'ideps'});

export default eps;