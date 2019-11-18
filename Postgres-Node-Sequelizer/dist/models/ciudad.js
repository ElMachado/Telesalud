"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _departamentoxciudad = _interopRequireDefault(require("./departamentoxciudad"));

var _contacto = _interopRequireDefault(require("./contacto"));

var _contactoadicional = _interopRequireDefault(require("./contactoadicional"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var ciudad = _database.sequelize.define('ciudad', {
  idciudad: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


ciudad.hasMany(_departamentoxciudad["default"], {
  foreingKey: 'idciudad',
  sourceKey: 'idciudad'
});

_departamentoxciudad["default"].belongsTo(ciudad, {
  foreingKey: 'idciudad',
  sourceKey: 'idciudad'
});

ciudad.hasMany(_contacto["default"], {
  foreingKey: 'idciudad',
  sourceKey: 'idciudad'
});

_contacto["default"].belongsTo(ciudad, {
  foreingKey: 'idciudad',
  sourceKey: 'idciudad'
});

ciudad.hasMany(_contactoadicional["default"], {
  foreingKey: 'idciudad',
  sourceKey: 'idciudad'
});

_contactoadicional["default"].belongsTo(ciudad, {
  foreingKey: 'idciudad',
  sourceKey: 'idciudad'
});

var _default = ciudad;
exports["default"] = _default;