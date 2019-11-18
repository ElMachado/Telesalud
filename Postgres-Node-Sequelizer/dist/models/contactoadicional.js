"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _contactoadicionalxusuario = _interopRequireDefault(require("./contactoadicionalxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var contactoadicional = _database.sequelize.define('contactoadicional', {
  idcontactoadicional: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  idtipocontactoadicional: {
    type: _sequelize["default"].INTEGER
  },
  telefono: {
    type: _sequelize["default"].TEXT
  },
  celular: {
    type: _sequelize["default"].TEXT
  },
  correo: {
    type: _sequelize["default"].TEXT
  },
  direccion: {
    type: _sequelize["default"].TEXT
  },
  idpais: {
    type: _sequelize["default"].INTEGER
  },
  iddepartamento: {
    type: _sequelize["default"].INTEGER
  },
  idciudad: {
    type: _sequelize["default"].INTEGER
  },
  otros: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


contactoadicional.hasMany(_contactoadicionalxusuario["default"], {
  foreingKey: 'idcontactoadicional',
  sourceKey: 'idcontactoadicional'
});

_contactoadicionalxusuario["default"].belongsTo(contactoadicional, {
  foreingKey: 'idcontactoadicional',
  sourceKey: 'idcontactoadicional'
});

var _default = contactoadicional;
exports["default"] = _default;