"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _tipoocupacionxusuario = _interopRequireDefault(require("./tipoocupacionxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var tipoocupacion = _database.sequelize.define('tipoocupacion', {
  idtipoocupacion: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


tipoocupacion.hasMany(_tipoocupacionxusuario["default"], {
  foreingKey: 'idtipoocupacion',
  sourceKey: 'idtipoocupacion'
});

_tipoocupacionxusuario["default"].belongsTo(tipoocupacion, {
  foreingKey: 'idtipoocupacion',
  sourceKey: 'idtipoocupacion'
});

var _default = tipoocupacion;
exports["default"] = _default;