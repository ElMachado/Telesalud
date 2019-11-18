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
var antecedentesfamiliares = _database.sequelize.define('antecedentesfamiliares', {
  idantecedentesfamiliares: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  hipertension: {
    type: _sequelize["default"].TEXT
  },
  cardiopatias: {
    type: _sequelize["default"].TEXT
  },
  epilepsia: {
    type: _sequelize["default"].TEXT
  },
  tuberculosis: {
    type: _sequelize["default"].TEXT
  },
  gestacionesmultiples: {
    type: _sequelize["default"].TEXT
  },
  enfermedadescongenitas: {
    type: _sequelize["default"].TEXT
  },
  cualesenfermedadescongenitas: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


antecedentesfamiliares.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idantecedentesfamiliares',
  sourceKey: 'idantecedentesfamiliares'
});

_atencioncontrolprenatal["default"].belongsTo(antecedentesfamiliares, {
  foreingKey: 'idantecedentesfamiliares',
  sourceKey: 'idantecedentesfamiliares'
});

var _default = antecedentesfamiliares;
exports["default"] = _default;