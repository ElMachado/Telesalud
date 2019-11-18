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
var datosiniciales = _database.sequelize.define('datosiniciales', {
  iddatosiniciales: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  embarazoplaneado: {
    type: _sequelize["default"].TEXT
  },
  fracasoelmetodoanticonceptivo: {
    type: _sequelize["default"].TEXT
  },
  gruposanguineo: {
    type: _sequelize["default"].TEXT
  },
  rh: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


datosiniciales.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'iddatosiniciales',
  sourceKey: 'iddatosiniciales'
});

_atencioncontrolprenatal["default"].belongsTo(datosiniciales, {
  foreingKey: 'iddatosiniciales',
  sourceKey: 'iddatosiniciales'
});

var _default = datosiniciales;
exports["default"] = _default;