"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var paisxdepartamento = _database.sequelize.define('paisxdepartamento', {
  idpais: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  iddepartamento: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  }
}, {
  timestamps: false
});

var _default = paisxdepartamento;
exports["default"] = _default;