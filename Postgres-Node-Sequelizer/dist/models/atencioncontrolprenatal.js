"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var atencioncontrolprenatal = _database.sequelize.define('atencioncontrolprenatal', {
  idatencioncontrolprenatal: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  idusuario: {
    type: _sequelize["default"].INTEGER
  },
  iddatosiniciales: {
    type: _sequelize["default"].INTEGER
  },
  idantecedentesgo: {
    type: _sequelize["default"].INTEGER
  },
  idantecedentespersonales: {
    type: _sequelize["default"].INTEGER
  },
  idantecedentesfamiliares: {
    type: _sequelize["default"].INTEGER
  },
  idantecedentesinmunologicos: {
    type: _sequelize["default"].INTEGER
  },
  idantecedentessociodemograficos: {
    type: _sequelize["default"].INTEGER
  },
  idsintomas: {
    type: _sequelize["default"].INTEGER
  },
  idhabitos: {
    type: _sequelize["default"].INTEGER
  },
  idexamenfisico: {
    type: _sequelize["default"].INTEGER
  },
  idexamenes: {
    type: _sequelize["default"].INTEGER
  }
}, {
  timestamps: false
});

var _default = atencioncontrolprenatal;
exports["default"] = _default;