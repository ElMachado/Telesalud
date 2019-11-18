"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _sexoxusuario = _interopRequireDefault(require("./sexoxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var sexo = _database.sequelize.define('sexo', {
  idsexo: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


sexo.hasMany(_sexoxusuario["default"], {
  foreingKey: 'idsexo',
  sourceKey: 'idsexo'
});

_sexoxusuario["default"].belongsTo(sexo, {
  foreingKey: 'idsexo',
  sourceKey: 'idsexo'
});

var _default = sexo;
exports["default"] = _default;