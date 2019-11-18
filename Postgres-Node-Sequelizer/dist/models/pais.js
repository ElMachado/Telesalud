"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _paisxdepartamento = _interopRequireDefault(require("./paisxdepartamento"));

var _contacto = _interopRequireDefault(require("./contacto"));

var _contactoadicional = _interopRequireDefault(require("./contactoadicional"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var pais = _database.sequelize.define('pais', {
  idpais: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


pais.hasMany(_paisxdepartamento["default"], {
  foreingKey: 'idpais',
  sourceKey: 'idpais'
});

_paisxdepartamento["default"].belongsTo(pais, {
  foreingKey: 'idpais',
  sourceKey: 'idpais'
});

pais.hasMany(_contacto["default"], {
  foreingKey: 'idpais',
  sourceKey: 'idpais'
});

_contacto["default"].belongsTo(pais, {
  foreingKey: 'idpais',
  sourceKey: 'idpais'
});

pais.hasMany(_contactoadicional["default"], {
  foreingKey: 'idpais',
  sourceKey: 'idpais'
});

_contactoadicional["default"].belongsTo(pais, {
  foreingKey: 'idpais',
  sourceKey: 'idpais'
});

var _default = pais;
exports["default"] = _default;