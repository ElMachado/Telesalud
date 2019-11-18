"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _terminacionembarazoxusuario = _interopRequireDefault(require("./terminacionembarazoxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var terminoembarazo = _database.sequelize.define('terminoembarazo', {
  idterminoembarazo: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  razonterminacionembarazo: {
    type: _sequelize["default"].TEXT
  },
  muertematerna: {
    type: _sequelize["default"].TEXT
  },
  sexodelbebe: {
    type: _sequelize["default"].TEXT
  },
  muertefetalparto: {
    type: _sequelize["default"].TEXT
  },
  nivelatencionparto: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
}); //relaciones


terminoembarazo.hasMany(_terminacionembarazoxusuario["default"], {
  foreingKey: 'idterminoembarazo',
  sourceKey: 'idterminoembarazo'
});

_terminacionembarazoxusuario["default"].belongsTo(terminoembarazo, {
  foreingKey: 'idterminoembarazo',
  sourceKey: 'idterminoembarazo'
});

var _default = terminoembarazo;
exports["default"] = _default;