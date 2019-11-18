"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _contactoadicional = _interopRequireDefault(require("./contactoadicional"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var tipocontactoadicional = _database.sequelize.define('tipocontactoadicional', {
  idtipocontactoadicional: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


tipocontactoadicional.hasMany(_contactoadicional["default"], {
  foreingKey: 'idtipocontactoadicional',
  sourceKey: 'idtipocontactoadicional'
});

_contactoadicional["default"].belongsTo(tipocontactoadicional, {
  foreingKey: 'idtipocontactoadicional',
  sourceKey: 'idtipocontactoadicional'
});

var _default = tipocontactoadicional;
exports["default"] = _default;