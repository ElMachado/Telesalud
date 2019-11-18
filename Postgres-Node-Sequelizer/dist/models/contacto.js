"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _contactoxusuario = _interopRequireDefault(require("./contactoxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var contacto = _database.sequelize.define('contacto', {
  idcontacto: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  idtipocontacto: {
    type: _sequelize["default"].INTEGER
  },
  idzona: {
    type: _sequelize["default"].INTEGER
  },
  direccion: {
    type: _sequelize["default"].TEXT
  },
  telefono: {
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
  }
}, {
  timestamps: false
}); //relaciones


contacto.hasMany(_contactoxusuario["default"], {
  foreingKey: 'idcontacto',
  sourceKey: 'idcontacto'
});

_contactoxusuario["default"].belongsTo(contacto, {
  foreingKey: 'idcontacto',
  sourceKey: 'idcontacto'
});

var _default = contacto;
exports["default"] = _default;