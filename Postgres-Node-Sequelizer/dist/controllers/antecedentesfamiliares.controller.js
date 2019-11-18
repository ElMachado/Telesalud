"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.getantecedentesfamiliares = getantecedentesfamiliares;
exports.createantecedentesfamiliares = createantecedentesfamiliares;
exports.getOneantecedentesfamiliares = getOneantecedentesfamiliares;
exports.deleteantecedentesfamiliares = deleteantecedentesfamiliares;
exports.updateantecedentesfamiliares = updateantecedentesfamiliares;

var _antecedentesfamiliares = _interopRequireDefault(require("../models/antecedentesfamiliares"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function getantecedentesfamiliares(req, res) {
  var antecedentesfamiliares;
  return regeneratorRuntime.async(function getantecedentesfamiliares$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _context.prev = 0;
          _context.next = 3;
          return regeneratorRuntime.awrap(_antecedentesfamiliares["default"].findAll({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas']
          }));

        case 3:
          antecedentesfamiliares = _context.sent;
          res.json({
            data: antecedentesfamiliares
          });
          _context.next = 11;
          break;

        case 7:
          _context.prev = 7;
          _context.t0 = _context["catch"](0);
          console.log(_context.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 11:
        case "end":
          return _context.stop();
      }
    }
  }, null, null, [[0, 7]]);
}

function createantecedentesfamiliares(req, res) {
  var _req$body, hipertension, cardiopatias, epilepsia, tuberculosis, gestacionesmultiples, enfermedadescongenitas, cualesenfermedadescongenitas, newantecedentesfamiliares;

  return regeneratorRuntime.async(function createantecedentesfamiliares$(_context2) {
    while (1) {
      switch (_context2.prev = _context2.next) {
        case 0:
          _req$body = req.body, hipertension = _req$body.hipertension, cardiopatias = _req$body.cardiopatias, epilepsia = _req$body.epilepsia, tuberculosis = _req$body.tuberculosis, gestacionesmultiples = _req$body.gestacionesmultiples, enfermedadescongenitas = _req$body.enfermedadescongenitas, cualesenfermedadescongenitas = _req$body.cualesenfermedadescongenitas;
          _context2.prev = 1;
          _context2.next = 4;
          return regeneratorRuntime.awrap(_antecedentesfamiliares["default"].create({
            hipertension: hipertension,
            cardiopatias: cardiopatias,
            epilepsia: epilepsia,
            tuberculosis: tuberculosis,
            gestacionesmultiples: gestacionesmultiples,
            enfermedadescongenitas: enfermedadescongenitas,
            cualesenfermedadescongenitas: cualesenfermedadescongenitas
          }, {
            fields: ['hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas']
          }));

        case 4:
          newantecedentesfamiliares = _context2.sent;

          if (!newantecedentesfamiliares) {
            _context2.next = 7;
            break;
          }

          return _context2.abrupt("return", res.json({
            message: 'antecedentes familiares creados correctamente',
            data: newantecedentesfamiliares
          }));

        case 7:
          _context2.next = 13;
          break;

        case 9:
          _context2.prev = 9;
          _context2.t0 = _context2["catch"](1);
          console.log(_context2.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 13:
        case "end":
          return _context2.stop();
      }
    }
  }, null, null, [[1, 9]]);
}

function getOneantecedentesfamiliares(req, res) {
  var idantecedentesfamiliares, antecedentesfamiliares;
  return regeneratorRuntime.async(function getOneantecedentesfamiliares$(_context3) {
    while (1) {
      switch (_context3.prev = _context3.next) {
        case 0:
          _context3.prev = 0;
          idantecedentesfamiliares = req.params.idantecedentesfamiliares;
          _context3.next = 4;
          return regeneratorRuntime.awrap(_antecedentesfamiliares["default"].findOne({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
            where: {
              idantecedentesfamiliares: idantecedentesfamiliares
            }
          }));

        case 4:
          antecedentesfamiliares = _context3.sent;
          res.json({
            data: antecedentesfamiliares
          });
          _context3.next = 12;
          break;

        case 8:
          _context3.prev = 8;
          _context3.t0 = _context3["catch"](0);
          console.log(_context3.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 12:
        case "end":
          return _context3.stop();
      }
    }
  }, null, null, [[0, 8]]);
}

function deleteantecedentesfamiliares(req, res) {
  var idantecedentesfamiliares, deleteRowCount;
  return regeneratorRuntime.async(function deleteantecedentesfamiliares$(_context4) {
    while (1) {
      switch (_context4.prev = _context4.next) {
        case 0:
          _context4.prev = 0;
          idantecedentesfamiliares = req.params.idantecedentesfamiliares;
          _context4.next = 4;
          return regeneratorRuntime.awrap(_antecedentesfamiliares["default"].destroy({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
            where: {
              idantecedentesfamiliares: idantecedentesfamiliares
            }
          }));

        case 4:
          deleteRowCount = _context4.sent;
          res.json({
            message: 'antecedente familiar eliminado satisfactoriamente',
            count: deleteRowCount
          });
          _context4.next = 12;
          break;

        case 8:
          _context4.prev = 8;
          _context4.t0 = _context4["catch"](0);
          console.log(_context4.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 12:
        case "end":
          return _context4.stop();
      }
    }
  }, null, null, [[0, 8]]);
}

function updateantecedentesfamiliares(req, res) {
  var idantecedentesfamiliares, _req$body2, hipertension, cardiopatias, epilepsia, tuberculosis, gestacionesmultiples, enfermedadescongenitas, cualesenfermedadescongenitas, antecedentesfamiliares;

  return regeneratorRuntime.async(function updateantecedentesfamiliares$(_context6) {
    while (1) {
      switch (_context6.prev = _context6.next) {
        case 0:
          _context6.prev = 0;
          idantecedentesfamiliares = req.params.idantecedentesfamiliares;
          _req$body2 = req.body, hipertension = _req$body2.hipertension, cardiopatias = _req$body2.cardiopatias, epilepsia = _req$body2.epilepsia, tuberculosis = _req$body2.tuberculosis, gestacionesmultiples = _req$body2.gestacionesmultiples, enfermedadescongenitas = _req$body2.enfermedadescongenitas, cualesenfermedadescongenitas = _req$body2.cualesenfermedadescongenitas;
          _context6.next = 5;
          return regeneratorRuntime.awrap(_antecedentesfamiliares["default"].findAll({
            attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
            where: {
              idantecedentesfamiliares: idantecedentesfamiliares
            }
          }));

        case 5:
          antecedentesfamiliares = _context6.sent;

          if (antecedentesfamiliares.length > 0) {
            antecedentesfamiliares.forEach(function _callee(antecedentesfamiliares) {
              return regeneratorRuntime.async(function _callee$(_context5) {
                while (1) {
                  switch (_context5.prev = _context5.next) {
                    case 0:
                      _context5.next = 2;
                      return regeneratorRuntime.awrap(antecedentesfamiliares.update({
                        attributes: ['idantecedentesfamiliares', 'hipertension', 'cardiopatias', 'epilepsia', 'tuberculosis', 'gestacionesmultiples', 'enfermedadescongenitas', 'cualesenfermedadescongenitas'],
                        idantecedentesfamiliares: idantecedentesfamiliares,
                        hipertension: hipertension,
                        cardiopatias: cardiopatias,
                        epilepsia: epilepsia,
                        tuberculosis: tuberculosis,
                        gestacionesmultiples: gestacionesmultiples,
                        enfermedadescongenitas: enfermedadescongenitas,
                        cualesenfermedadescongenitas: cualesenfermedadescongenitas
                      }));

                    case 2:
                    case "end":
                      return _context5.stop();
                  }
                }
              });
            });
          }

          return _context6.abrupt("return", res.json({
            message: 'Antecedente familiar actualizado correctamente',
            data: antecedentesfamiliares
          }));

        case 10:
          _context6.prev = 10;
          _context6.t0 = _context6["catch"](0);
          console.log(_context6.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 14:
        case "end":
          return _context6.stop();
      }
    }
  }, null, null, [[0, 10]]);
}