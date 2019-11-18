"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _departamentoxciudad = _interopRequireDefault(require("./departamentoxciudad"));

var _paisxdepartamento = _interopRequireDefault(require("./paisxdepartamento"));

var _contacto = _interopRequireDefault(require("./contacto"));

var _contactoadicional = _interopRequireDefault(require("./contactoadicional"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var departamento = _database.sequelize.define('departamento', {
  iddepartamento: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


departamento.hasMany(_departamentoxciudad["default"], {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

_departamentoxciudad["default"].belongsTo(departamento, {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

departamento.hasMany(_paisxdepartamento["default"], {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

_paisxdepartamento["default"].belongsTo(departamento, {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

departamento.hasMany(_contacto["default"], {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

_contacto["default"].belongsTo(departamento, {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

departamento.hasMany(_contactoadicional["default"], {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

_contactoadicional["default"].belongsTo(departamento, {
  foreingKey: 'iddepartamento',
  sourceKey: 'iddepartamento'
});

var _default = departamento;
exports["default"] = _default;