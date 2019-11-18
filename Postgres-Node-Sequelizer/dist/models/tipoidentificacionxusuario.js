"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var tipoidentificacionxusuario = _database.sequelize.define('tipoidentificacionxusuario', {
  idtipoidentificacion: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  idusuario: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  }
}, {
  timestamps: false
});

var _default = tipoidentificacionxusuario;
exports["default"] = _default;