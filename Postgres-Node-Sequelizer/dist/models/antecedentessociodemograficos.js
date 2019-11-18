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
var antecedentessociodemograficos = _database.sequelize.define('antecedentessociodemograficos', {
  idantecedentessociodemograficos: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  etnia: {
    type: _sequelize["default"].TEXT
  },
  vivesola: {
    type: _sequelize["default"].TEXT
  },
  estadocivil: {
    type: _sequelize["default"].TEXT
  },
  violenciaintrafamiliarreciente: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


antecedentessociodemograficos.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idantecedentessociodemograficos',
  sourceKey: 'idantecedentessociodemograficos'
});

_atencioncontrolprenatal["default"].belongsTo(antecedentessociodemograficos, {
  foreingKey: 'idantecedentessociodemograficos',
  sourceKey: 'idantecedentessociodemograficos'
});

var _default = antecedentessociodemograficos;
exports["default"] = _default;