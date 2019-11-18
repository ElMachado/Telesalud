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
var examenfisico = _database.sequelize.define('examenfisico', {
  idexamenfisico: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  frecuenciarespiratoria: {
    type: _sequelize["default"].TEXT
  },
  presionarterialsistolica: {
    type: _sequelize["default"].TEXT
  },
  presionarterialdiastolica: {
    type: _sequelize["default"].TEXT
  },
  examenesmamas: {
    type: _sequelize["default"].TEXT
  },
  tactovaginal: {
    type: _sequelize["default"].TEXT
  },
  observacionesexamenfisico: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


examenfisico.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idexamenfisico',
  sourceKey: 'idexamenfisico'
});

_atencioncontrolprenatal["default"].belongsTo(examenfisico, {
  foreingKey: 'idexamenfisico',
  sourceKey: 'idexamenfisico'
});

var _default = examenfisico;
exports["default"] = _default;