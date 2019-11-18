"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _tipousuarioxusuario = _interopRequireDefault(require("./tipousuarioxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var tipousuario = _database.sequelize.define('tipousuario', {
  idtipousuario: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


tipousuario.hasMany(_tipousuarioxusuario["default"], {
  foreingKey: 'idtipousuario',
  sourceKey: 'idtipousuario'
});

_tipousuarioxusuario["default"].belongsTo(tipousuario, {
  foreingKey: 'idtipousuario',
  sourceKey: 'idtipousuario'
});

var _default = tipousuario;
exports["default"] = _default;