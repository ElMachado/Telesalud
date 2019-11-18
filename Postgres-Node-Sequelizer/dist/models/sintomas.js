"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _atencioncontrolprenatal = _interopRequireDefault(require("./atencioncontrolprenatal"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var sintomas = _database.sequelize.define('sintomas', {
  idsintomas: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  cefalea: {
    type: _sequelize["default"].TEXT
  },
  transtornosvisuales: {
    type: _sequelize["default"].TEXT
  },
  transtornosauditivos: {
    type: _sequelize["default"].TEXT
  },
  sangradovaginal: {
    type: _sequelize["default"].TEXT
  },
  sintomasurinarios: {
    type: _sequelize["default"].TEXT
  },
  movimientosfetales: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


sintomas.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idsintomas',
  sourceKey: 'idsintomas'
});

_atencioncontrolprenatal["default"].belongsTo(sintomas, {
  foreingKey: 'idsintomas',
  sourceKey: 'idsintomas'
});

var _default = sintomas;
exports["default"] = _default;