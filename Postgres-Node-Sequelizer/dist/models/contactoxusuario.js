"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var contactoxusuario = _database.sequelize.define('contactoxusuario', {
  idusuario: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  idcontacto: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  }
}, {
  timestamps: false
});

var _default = contactoxusuario;
exports["default"] = _default;