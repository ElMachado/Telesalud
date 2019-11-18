"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _atencioncontrolprenatal = _interopRequireDefault(require("./atencioncontrolprenatal"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var antecedentesinmunologicos = _database.sequelize.define('antecedentesinmunologicos', {
  idantecedentesinmunologicos: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  vacunaantirubeola: {
    type: _sequelize["default"].TEXT
  },
  vacunaantitetanica: {
    type: _sequelize["default"].TEXT
  },
  vacunaaplicadaultimolustro: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


antecedentesinmunologicos.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idantecedentesinmunologicos',
  sourceKey: 'idantecedentesinmunologicos'
});

_atencioncontrolprenatal["default"].belongsTo(antecedentesinmunologicos, {
  foreingKey: 'idantecedentesinmunologicos',
  sourceKey: 'idantecedentesinmunologicos'
});

var _default = antecedentesinmunologicos;
exports["default"] = _default;