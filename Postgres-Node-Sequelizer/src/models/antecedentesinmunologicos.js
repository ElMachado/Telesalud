import Sequelize from 'sequelize';
import { sequelize } from "../database/database";

//importar elementos para las relaciones
import atencioncontrolprenatal from './atencioncontrolprenatal';

const antecedentesinmunologicos=sequelize.define('antecedentesinmunologicos',{
    idantecedentesinmunologicos:{
        type: Sequelize.INTEGER,
        primarykey:true        
    },
    vacunaantirubeola :{
        type: Sequelize.TEXT
    },
    vacunaantitetanica :{
        type: Sequelize.TEXT
    },
    vacunaaplicadaultimolustro :{
        type: Sequelize.TEXT
    }
}, {
    timestamps:false
});

//relaciones
antecedentesinmunologicos.hasMany(atencioncontrolprenatal, { foreingKey: 'idantecedentesinmunologicos', sourceKey: 'idantecedentesinmunologicos'});
atencioncontrolprenatal.belongsTo(antecedentesinmunologicos, { foreingKey:'idantecedentesinmunologicos', sourceKey: 'idantecedentesinmunologicos'});

export default antecedentesinmunologicos;