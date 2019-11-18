import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

const atencioncontrolprenatal=sequelize.define('atencioncontrolprenatal',{
    idatencioncontrolprenatal:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    idusuario :{
        type: Sequelize.INTEGER
    },
    iddatosiniciales :{
        type: Sequelize.INTEGER
    },
    idantecedentesgo:{
        type: Sequelize.INTEGER
    },
    idantecedentespersonales :{
        type: Sequelize.INTEGER
    },
    idantecedentesfamiliares :{
        type: Sequelize.INTEGER
    },
    idantecedentesinmunologicos :{
        type: Sequelize.INTEGER
    },
    idantecedentessociodemograficos :{
        type: Sequelize.INTEGER
    },
    idsintomas :{
        type: Sequelize.INTEGER
    },
    idhabitos :{
        type: Sequelize.INTEGER
    },
    idexamenfisico :{
        type: Sequelize.INTEGER
    },
    idexamenes :{
        type: Sequelize.INTEGER
    }
}, {
    timestamps:false
});

export default atencioncontrolprenatal;