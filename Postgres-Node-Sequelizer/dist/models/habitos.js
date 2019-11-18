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
var habitos = _database.sequelize.define('habitos', {
  idhabitos: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  fumadoraactiva: {
    type: _sequelize["default"].TEXT
  },
  fumadorapasiva: {
    type: _sequelize["default"].TEXT
  },
  consumedrogas: {
    type: _sequelize["default"].TEXT
  },
  cualesdrogas: {
    type: _sequelize["default"].TEXT
  },
  consumoalcohol: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


habitos.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idhabitos',
  sourceKey: 'idhabitos'
});

_atencioncontrolprenatal["default"].belongsTo(habitos, {
  foreingKey: 'idhabitos',
  sourceKey: 'idhabitos'
});

var _default = habitos;
exports["default"] = _default;