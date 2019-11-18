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
var antecedentespersonales = _database.sequelize.define('antecedentespersonales', {
  idantecedentespersonales: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  hipertension: {
    type: _sequelize["default"].TEXT
  },
  cardiopatias: {
    type: _sequelize["default"].TEXT
  },
  enfermedadesautoinmunes: {
    type: _sequelize["default"].TEXT
  },
  tuberculosis: {
    type: _sequelize["default"].TEXT
  },
  enfermedadestransmisionsexual: {
    type: _sequelize["default"].TEXT
  },
  cualets: {
    type: _sequelize["default"].TEXT
  },
  alergia: {
    type: _sequelize["default"].TEXT
  },
  cualalergia: {
    type: _sequelize["default"].TEXT
  },
  medicamentosactuales: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


antecedentespersonales.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idantecedentespersonales',
  sourceKey: 'idantecedentespersonales'
});

_atencioncontrolprenatal["default"].belongsTo(antecedentespersonales, {
  foreingKey: 'idantecedentespersonales',
  sourceKey: 'idantecedentespersonales'
});

var _default = antecedentespersonales;
exports["default"] = _default;