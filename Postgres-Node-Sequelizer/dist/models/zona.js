"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _contacto = _interopRequireDefault(require("./contacto"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var zona = _database.sequelize.define('zona', {
  idzona: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  descripcion: {
    type: _sequelize["default"].TEXT
  }
}, {
  timestamps: false
});

zona.hasMany(_contacto["default"], {
  foreingKey: 'idzona',
  sourceKey: 'idzona'
});

_contacto["default"].belongsTo(zona, {
  foreingKey: 'idzona',
  sourceKey: 'idzona'
});

var _default = zona;
exports["default"] = _default;