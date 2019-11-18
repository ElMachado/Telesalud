"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _tipoidentificacionxusuario = _interopRequireDefault(require("./tipoidentificacionxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var tipoidentificacion = _database.sequelize.define('tipoidentificacion', {
  idtipoidentificacion: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


tipoidentificacion.hasMany(_tipoidentificacionxusuario["default"], {
  foreingKey: 'idtipoidentificacion',
  sourceKey: 'idtipoidentificacion'
});

_tipoidentificacionxusuario["default"].belongsTo(tipoidentificacion, {
  foreingKey: 'idtipoidentificacion',
  sourceKey: 'idtipoidentificacion'
});

var _default = tipoidentificacion;
exports["default"] = _default;