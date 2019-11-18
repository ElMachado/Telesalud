import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import paisxdepartamento from './paisxdepartamento';
import contacto from './contacto';
import contactoadicional from './contactoadicional';

const pais=sequelize.define('pais',{
    idpais:{
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
pais.hasMany(paisxdepartamento, { foreingKey: 'idpais', sourceKey: 'idpais'});
paisxdepartamento.belongsTo(pais, { foreingKey:'idpais', sourceKey: 'idpais'});

pais.hasMany(contacto, { foreingKey: 'idpais', sourceKey: 'idpais'});
contacto.belongsTo(pais, { foreingKey:'idpais', sourceKey: 'idpais'});

pais.hasMany(contactoadicional, { foreingKey: 'idpais', sourceKey: 'idpais'});
contactoadicional.belongsTo(pais, { foreingKey:'idpais', sourceKey: 'idpais'});


export default pais;