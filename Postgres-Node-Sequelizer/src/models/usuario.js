import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';
import epsxusuario from './epsxusuario';
import contactoxusuario from './contactoxusuario';
import contactoadicionalxusuario from './contactoadicionalxusuario';
import sexoxusuario from './sexoxusuario';
import terminacionembarazoxusuario from './terminacionembarazoxusuario';
import tipousuarioxusuario from './tipousuarioxusuario';
import tipoafiliacionxusuario from './tipoafiliacionxusuario';
import tipoidentificacionxusuario from './tipoidentificacionxusuario';
import tipoocupacionxusuario from './tipoocupacionxusuario';


const usuario=sequelize.define('usuario',{
    idusuario:{
        type: Sequelize.INTEGER,
        primarykey:true
    },
    primernombre:{
        type: Sequelize.TEXT
    },
    segundonombre:{
        type: Sequelize.TEXT
    },
    identificacion:{
        type: Sequelize.TEXT
    },
    fechanacimiento:{
        type: Sequelize.DATE
    },
    email:{
        type: Sequelize.TEXT
    }/*,
    imagen:{
        type: Sequelize.B
    }*/
}, {
    timestamps:false
});


//relaciones
usuario.hasMany(atencioncontrolprenatal, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
atencioncontrolprenatal.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(epsxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
epsxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(contactoxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
contactoxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(contactoadicionalxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
contactoadicionalxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(sexoxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
sexoxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(terminacionembarazoxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
terminacionembarazoxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(tipousuarioxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
tipousuarioxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(tipoafiliacionxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
tipoafiliacionxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(tipoidentificacionxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
tipoidentificacionxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});

usuario.hasMany(tipoocupacionxusuario, { foreingKey: 'idusuario', sourceKey: 'idusuario'});
tipoocupacionxusuario.belongsTo(usuario, { foreingKey:'idusuario', sourceKey: 'idusuario'});



export default usuario;