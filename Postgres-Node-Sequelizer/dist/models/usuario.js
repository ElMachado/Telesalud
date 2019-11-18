"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _sequelize = _interopRequireDefault(require("sequelize"));

var _database = require("../database/database");

var _atencioncontrolprenatal = _interopRequireDefault(require("./atencioncontrolprenatal"));

var _epsxusuario = _interopRequireDefault(require("./epsxusuario"));

var _contactoxusuario = _interopRequireDefault(require("./contactoxusuario"));

var _contactoadicionalxusuario = _interopRequireDefault(require("./contactoadicionalxusuario"));

var _sexoxusuario = _interopRequireDefault(require("./sexoxusuario"));

var _terminacionembarazoxusuario = _interopRequireDefault(require("./terminacionembarazoxusuario"));

var _tipousuarioxusuario = _interopRequireDefault(require("./tipousuarioxusuario"));

var _tipoafiliacionxusuario = _interopRequireDefault(require("./tipoafiliacionxusuario"));

var _tipoidentificacionxusuario = _interopRequireDefault(require("./tipoidentificacionxusuario"));

var _tipoocupacionxusuario = _interopRequireDefault(require("./tipoocupacionxusuario"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

//importar elementos para las relaciones
var usuario = _database.sequelize.define('usuario', {
  idusuario: {
    type: _sequelize["default"].INTEGER,
    primarykey: true
  },
  primernombre: {
    type: _sequelize["default"].TEXT
  },
  segundonombre: {
    type: _sequelize["default"].TEXT
  },
  identificacion: {
    type: _sequelize["default"].TEXT
  },
  fechanacimiento: {
    type: _sequelize["default"].DATE
  },
  email: {
    type: _sequelize["default"].TEXT
  }
  /*,
  imagen:{
     type: Sequelize.B
  }*/

}, {
  timestamps: false
}); //relaciones


usuario.hasMany(_atencioncontrolprenatal["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_atencioncontrolprenatal["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_epsxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_epsxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_contactoxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_contactoxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_contactoadicionalxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_contactoadicionalxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_sexoxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_sexoxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_terminacionembarazoxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_terminacionembarazoxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_tipousuarioxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_tipousuarioxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_tipoafiliacionxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_tipoafiliacionxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_tipoidentificacionxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_tipoidentificacionxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

usuario.hasMany(_tipoocupacionxusuario["default"], {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

_tipoocupacionxusuario["default"].belongsTo(usuario, {
  foreingKey: 'idusuario',
  sourceKey: 'idusuario'
});

var _default = usuario;
exports["default"] = _default;