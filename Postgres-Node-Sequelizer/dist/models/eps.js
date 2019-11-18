"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _epsxusuario = _interopRequireDefault(require("./epsxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var eps = _database.sequelize.define('eps', {
  ideps: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


eps.hasMany(_epsxusuario["default"], {
  foreingKey: 'ideps',
  sourceKey: 'ideps'
});

_epsxusuario["default"].belongsTo(eps, {
  foreingKey: 'ideps',
  sourceKey: 'ideps'
});

var _default = eps;
exports["default"] = _default;