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
var examenes = _database.sequelize.define('examenes', {
  idexamenes: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  traepruebaantigenohepatitisb: {
    type: _sequelize["default"].TEXT
  },
  resultadopruebaantigenohepatitisb: {
    type: _sequelize["default"].TEXT
  },
  traepruebavih: {
    type: _sequelize["default"].TEXT
  },
  resultadovih: {
    type: _sequelize["default"].TEXT
  },
  examencitologiareciente: {
    type: _sequelize["default"].TEXT
  },
  observacioncitologia: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


examenes.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idexamenes',
  sourceKey: 'idexamenes'
});

_atencioncontrolprenatal["default"].belongsTo(examenes, {
  foreingKey: 'idexamenes',
  sourceKey: 'idexamenes'
});

var _default = examenes;
exports["default"] = _default;