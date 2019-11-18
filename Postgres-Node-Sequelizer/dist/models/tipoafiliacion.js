"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _tipoafiliacionxusuario = _interopRequireDefault(require("./tipoafiliacionxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var tipoafiliacion = _database.sequelize.define('tipoafiliacion', {
  idtipoafiliacion: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


tipoafiliacion.hasMany(_tipoafiliacionxusuario["default"], {
  foreingKey: 'idtipoafiliacion',
  sourceKey: 'idtipoafiliacion'
});

_tipoafiliacionxusuario["default"].belongsTo(tipoafiliacion, {
  foreingKey: 'idtipoafiliacion',
  sourceKey: 'idtipoafiliacion'
});

var _default = tipoafiliacion;
exports["default"] = _default;