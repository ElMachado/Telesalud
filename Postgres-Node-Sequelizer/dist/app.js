"use strict";

function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _express = _interopRequireWildcard(require("express"));

var _morgan = _interopRequireDefault(require("morgan"));

var _antecedentesfamiliares = _interopRequireDefault(require("./routes/antecedentesfamiliares"));

var _antecedentesgo = _interopRequireDefault(require("./routes/antecedentesgo"));

var _antecedentesinmunologicos = _interopRequireDefault(require("./routes/antecedentesinmunologicos"));

var _antecedentespersonales = _interopRequireDefault(require("./routes/antecedentespersonales"));

var _antecedentessociodemograficos = _interopRequireDefault(require("./routes/antecedentessociodemograficos"));

var _atencioncontrolprenatal = _interopRequireDefault(require("./routes/atencioncontrolprenatal"));

var _ciudad = _interopRequireDefault(require("./routes/ciudad"));

var _contacto = _interopRequireDefault(require("./routes/contacto"));

var _contactoadicional = _interopRequireDefault(require("./routes/contactoadicional"));

var _contactoadicionalxusuario = _interopRequireDefault(require("./routes/contactoadicionalxusuario"));

var _contactoxusuario = _interopRequireDefault(require("./routes/contactoxusuario"));

var _datosiniciales = _interopRequireDefault(require("./routes/datosiniciales"));

var _departamento = _interopRequireDefault(require("./routes/departamento"));

var _departamentoxciudad = _interopRequireDefault(require("./routes/departamentoxciudad"));

var _eps = _interopRequireDefault(require("./routes/eps"));

var _epsxusuario = _interopRequireDefault(require("./routes/epsxusuario"));

var _examenes = _interopRequireDefault(require("./routes/examenes"));

var _examenfisico = _interopRequireDefault(require("./routes/examenfisico"));

var _habitos = _interopRequireDefault(require("./routes/habitos"));

var _pais = _interopRequireDefault(require("./routes/pais"));

var _paisxdepartamento = _interopRequireDefault(require("./routes/paisxdepartamento"));

var _sexo = _interopRequireDefault(require("./routes/sexo"));

var _sexoxusuario = _interopRequireDefault(require("./routes/sexoxusuario"));

var _sintomas = _interopRequireDefault(require("./routes/sintomas"));

var _terminoembarazo = _interopRequireDefault(require("./routes/terminoembarazo"));

var _terminoembarazoxusuario = _interopRequireDefault(require("./routes/terminoembarazoxusuario"));

var _tipoafiliacion = _interopRequireDefault(require("./routes/tipoafiliacion"));

var _tipoafiliacionxusuario = _interopRequireDefault(require("./routes/tipoafiliacionxusuario"));

var _tipocontacto = _interopRequireDefault(require("./routes/tipocontacto"));

var _tipocontactoadicional = _interopRequireDefault(require("./routes/tipocontactoadicional"));

var _tipoidentificacion = _interopRequireDefault(require("./routes/tipoidentificacion"));

var _tipoidentificacionxusuario = _interopRequireDefault(require("./routes/tipoidentificacionxusuario"));

var _tipoocupacion = _interopRequireDefault(require("./routes/tipoocupacion"));

var _tipoocupacionxusuario = _interopRequireDefault(require("./routes/tipoocupacionxusuario"));

var _tipousuario = _interopRequireDefault(require("./routes/tipousuario"));

var _tipousuarioxusuario = _interopRequireDefault(require("./routes/tipousuarioxusuario"));

var _usuario = _interopRequireDefault(require("./routes/usuario"));

var _zona = _interopRequireDefault(require("./routes/zona"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function _getRequireWildcardCache() { if (typeof WeakMap !== "function") return null; var cache = new WeakMap(); _getRequireWildcardCache = function _getRequireWildcardCache() { return cache; }; return cache; }

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } if (obj === null || _typeof(obj) !== "object" && typeof obj !== "function") { return { "default": obj }; } var cache = _getRequireWildcardCache(); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj["default"] = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

//importing routes
//initialization
var app = (0, _express["default"])(); //middlewares

app.use((0, _morgan["default"])('dev'));
app.use((0, _express.json)()); //routes

app.use('/api/antecedentesfamiliares', _antecedentesfamiliares["default"]);
app.use('/api/antecedentesgo', _antecedentesgo["default"]);
app.use('/api/antecedentesinmunologicos', _antecedentesinmunologicos["default"]);
app.use('/api/antecedentespersonales', _antecedentespersonales["default"]);
app.use('/api/antecedentessociodemograficos', _antecedentessociodemograficos["default"]);
app.use('/api/atencioncontrolprenatal', _atencioncontrolprenatal["default"]);
app.use('/api/ciudad', _ciudad["default"]);
app.use('/api/contacto', _contacto["default"]);
app.use('/api/contactoadicional', _contactoadicional["default"]);
app.use('/api/contactoadicionalxusuario', _contactoadicionalxusuario["default"]);
app.use('/api/contactoxusuario', _contactoxusuario["default"]);
app.use('/api/datosiniciales', _datosiniciales["default"]);
app.use('/api/departamento', _departamento["default"]);
app.use('/api/departamentoxciudad', _departamentoxciudad["default"]);
app.use('/api/eps', _eps["default"]);
app.use('/api/epsxusuario', _epsxusuario["default"]);
app.use('/api/examenes', _examenes["default"]);
app.use('/api/examenfisico', _examenfisico["default"]);
app.use('/api/habitos', _habitos["default"]);
app.use('/api/pais', _pais["default"]);
app.use('/api/paisxdepartamento', _paisxdepartamento["default"]);
app.use('/api/sexo', _sexo["default"]);
app.use('/api/sexoxusuario', _sexoxusuario["default"]);
app.use('/api/sintomas', _sintomas["default"]);
app.use('/api/terminoembarazo', _terminoembarazo["default"]);
app.use('/api/terminoembarazoxusuario', _terminoembarazoxusuario["default"]);
app.use('/api/tipoafiliacion', _tipoafiliacion["default"]);
app.use('/api/tipoafiliacionxusuario', _tipoafiliacionxusuario["default"]);
app.use('/api/tipocontacto', _tipocontacto["default"]);
app.use('/api/tipocontactoadicional', _tipocontactoadicional["default"]);
app.use('/api/tipoidentificacion', _tipoidentificacion["default"]);
app.use('/api/tipoidentificacionxusuario', _tipoidentificacionxusuario["default"]);
app.use('/api/tipoocupacion', _tipoocupacion["default"]);
app.use('/api/tipoocupacionxusuario', _tipoocupacionxusuario["default"]);
app.use('/api/tipousuario', _tipousuario["default"]);
app.use('/api/tipousuarioxusuario', _tipousuarioxusuario["default"]);
app.use('/api/usuario', _usuario["default"]);
app.use('/api/zona', _zona["default"]);
var _default = app;
exports["default"] = _default;