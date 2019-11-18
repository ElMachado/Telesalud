"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var tipoocupacionxusuario = _database.sequelize.define('tipoocupacionxusuario', {
  idtipoocupacion: {
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

var _default = tipoocupacionxusuario;
exports["default"] = _default;