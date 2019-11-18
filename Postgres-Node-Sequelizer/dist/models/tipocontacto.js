"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _contacto = _interopRequireDefault(require("./contacto"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var tipocontacto = _database.sequelize.define('tipocontacto', {
  idtipocontacto: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


tipocontacto.hasMany(_contacto["default"], {
  foreingKey: 'idtipocontacto',
  sourceKey: 'idtipocontacto'
});

_contacto["default"].belongsTo(tipocontacto, {
  foreingKey: 'idtipocontacto',
  sourceKey: 'idtipocontacto'
});

var _default = tipocontacto;
exports["default"] = _default;