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
var antecedentesgo = _database.sequelize.define('antecedentesgo', {
  idantecedentesgo: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  edadmenarquia: {
    type: _sequelize["default"].INTEGER
  },
  cirugiagenitourinaria: {
    type: _sequelize["default"].TEXT
  },
  cualcirugiagenitourinaria: {
    type: _sequelize["default"].TEXT
  },
  infertilidad: {
    type: _sequelize["default"].TEXT
  },
  enfermedadpelvicainflamatoria: {
    type: _sequelize["default"].TEXT
  },
  cualenfermedadpelvicainflamatoria: {
    type: _sequelize["default"].TEXT
  },
  embarazosprevios: {
    type: _sequelize["default"].INTEGER
  }
}, {
  timestamps: false
}); //relaciones


antecedentesgo.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idantecedentesgo',
  sourceKey: 'idantecedentesgo'
});

_atencioncontrolprenatal["default"].belongsTo(antecedentesgo, {
  foreingKey: 'idantecedentesgo',
  sourceKey: 'idantecedentesgo'
});

var _default = antecedentesgo;
exports["default"] = _default;