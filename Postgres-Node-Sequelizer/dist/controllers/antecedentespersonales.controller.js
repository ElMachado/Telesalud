"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.createantecedentespersonales = createantecedentespersonales;
exports.getantecedentespersonales = getantecedentespersonales;
exports.getOneantecedentespersonales = getOneantecedentespersonales;
exports.deleteantecedentespersonales = deleteantecedentespersonales;
exports.updateantecedentespersonales = updateantecedentespersonales;

var _antecedentespersonales = _interopRequireDefault(require("../models/antecedentespersonales"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function createantecedentespersonales(req, res) {
  var _req$body, hipertension, cardiopatias, enfermedadesautoinmunes, tuberculosis, enfermedadestransmisionsexual, cualets, alergia, cualalergia, medicamentosactuales, newantecedentespersonales;

  return regeneratorRuntime.async(function createantecedentespersonales$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _req$body = req.body, hipertension = _req$body.hipertension, cardiopatias = _req$body.cardiopatias, enfermedadesautoinmunes = _req$body.enfermedadesautoinmunes, tuberculosis = _req$body.tuberculosis, enfermedadestransmisionsexual = _req$body.enfermedadestransmisionsexual, cualets = _req$body.cualets, alergia = _req$body.alergia, cualalergia = _req$body.cualalergia, medicamentosactuales = _req$body.medicamentosactuales;
          _context.prev = 1;
          _context.next = 4;
          return regeneratorRuntime.awrap(_antecedentespersonales["default"].create({
            hipertension: hipertension,
            cardiopatias: cardiopatias,
            enfermedadesautoinmunes: enfermedadesautoinmunes,
            tuberculosis: tuberculosis,
            enfermedadestransmisionsexual: enfermedadestransmisionsexual,
            cualets: cualets,
            alergia: alergia,
            cualalergia: cualalergia,
            medicamentosactuales: medicamentosactuales
          }, {
            fields: ['hipertension', 'cardiopatias', 'enfermedadesautoinmunes', 'tuberculosis', 'enfermedadestransmisionsexual', 'cualets', 'alergia', 'cualalergia', 'medicamentosactuales']
          }));

        case 4:
          newantecedentespersonales = _context.sent;

          if (!newantecedentespersonales) {
            _context.next = 7;
            break;
          }

          return _context.abrupt("return", res.json({
            message: 'antecedentes inmunologicos creados correctamente',
            data: newantecedentespersonales
          }));

        case 7:
          _context.next = 13;
          break;

        case 9:
          _context.prev = 9;
          _context.t0 = _context["catch"](1);
          console.log(_context.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 13:
        case "end":
          return _context.stop();
      }
    }
  }, null, null, [[1, 9]]);
}

function getantecedentespersonales(req, res) {
  var antecedentespersonales;
  return regeneratorRuntime.async(function getantecedentespersonales$(_context2) {
    while (1) {
      switch (_context2.prev = _context2.next) {
        case 0:
          _context2.prev = 0;
          _context2.next = 3;
          return regeneratorRuntime.awrap(_antecedentespersonales["default"].findAll({
            attributes: ['idantecedentespersonales', 'hipertension', 'cardiopatias', 'enfermedadesautoinmunes', 'tuberculosis', 'enfermedadestransmisionsexual', 'cualets', 'alergia', 'cualalergia', 'medicamentosactuales']
          }));

        case 3:
          antecedentespersonales = _context2.sent;
          res.json({
            data: antecedentespersonales
          });
          _context2.next = 11;
          break;

        case 7:
          _context2.prev = 7;
          _context2.t0 = _context2["catch"](0);
          console.log(_context2.t0);
          res.status(500).json({
            message: 'Ha ocurrido un error',
            data: {}
          });

        case 11:
        case "end":
          return _context2.stop();
      }
    }
  }, null, null, [[0, 7]]);
}

function getOneantecedentespersonales(req, res) {
  var idantecedentespersonales, antecedentespersonales;
  return regeneratorRuntime.async(function getOneantecedentespersonales$(_context3) {
    while (1) {
      switch (_context3.prev = _context3.next) {
        case 0:
          _context3.prev = 0;
          idantecedentespersonales = req.params.idantecedentespersonales;
          _context3.next = 4;
          return regeneratorRuntime.awrap(_antecedentespersonales["default"].findOne({
            attributes: ['idantecedentespersonales', 'hipertension', 'cardiopatias', 'enfermedadesautoinmunes', 'tuberculosis', 'enfermedadestransmisionsexual', 'cualets', 'alergia', 'cualalergia', 'medicamentosactuales'],
            where: {
              idantecedentespersonales: idantecedentespersonales
            }
          }));

        case 4:
          antecedentespersonales = _context3.sent;
          res.json({
            data: antecedentespersonales
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

function deleteantecedentespersonales(req, res) {
  var idantecedentespersonales, deleteRowCount;
  return regeneratorRuntime.async(function deleteantecedentespersonales$(_context4) {
    while (1) {
      switch (_context4.prev = _context4.next) {
        case 0:
          _context4.prev = 0;
          idantecedentespersonales = req.params.idantecedentespersonales;
          _context4.next = 4;
          return regeneratorRuntime.awrap(_antecedentespersonales["default"].destroy({
            attributes: ['idantecedentespersonales', 'hipertension', 'cardiopatias', 'enfermedadesautoinmunes', 'tuberculosis', 'enfermedadestransmisionsexual', 'cualets', 'alergia', 'cualalergia', 'medicamentosactuales'],
            where: {
              idantecedentespersonales: idantecedentespersonales
            }
          }));

        case 4:
          deleteRowCount = _context4.sent;
          res.json({
            message: 'antecedente personal eliminado satisfactoriamente',
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

function updateantecedentespersonales(req, res) {
  var idantecedentespersonales, _req$body2, hipertension, cardiopatias, enfermedadesautoinmunes, tuberculosis, enfermedadestransmisionsexual, cualets, alergia, cualalergia, medicamentosactuales, antecedentespersonales;

  return regeneratorRuntime.async(function updateantecedentespersonales$(_context6) {
    while (1) {
      switch (_context6.prev = _context6.next) {
        case 0:
          _context6.prev = 0;
          idantecedentespersonales = req.params.idantecedentespersonales;
          _req$body2 = req.body, hipertension = _req$body2.hipertension, cardiopatias = _req$body2.cardiopatias, enfermedadesautoinmunes = _req$body2.enfermedadesautoinmunes, tuberculosis = _req$body2.tuberculosis, enfermedadestransmisionsexual = _req$body2.enfermedadestransmisionsexual, cualets = _req$body2.cualets, alergia = _req$body2.alergia, cualalergia = _req$body2.cualalergia, medicamentosactuales = _req$body2.medicamentosactuales;
          _context6.next = 5;
          return regeneratorRuntime.awrap(_antecedentespersonales["default"].findAll({
            attributes: ['idantecedentespersonales', 'hipertension', 'cardiopatias', 'enfermedadesautoinmunes', 'tuberculosis', 'enfermedadestransmisionsexual', 'cualets', 'alergia', 'cualalergia', 'medicamentosactuales'],
            where: {
              idantecedentespersonales: idantecedentespersonales
            }
          }));

        case 5:
          antecedentespersonales = _context6.sent;

          if (antecedentespersonales.length > 0) {
            antecedentespersonales.forEach(function _callee(antecedentespersonales) {
              return regeneratorRuntime.async(function _callee$(_context5) {
                while (1) {
                  switch (_context5.prev = _context5.next) {
                    case 0:
                      _context5.next = 2;
                      return regeneratorRuntime.awrap(antecedentespersonales.update({
                        attributes: ['idantecedentespersonales', 'hipertension', 'cardiopatias', 'enfermedadesautoinmunes', 'tuberculosis', 'enfermedadestransmisionsexual', 'cualets', 'alergia', 'cualalergia', 'medicamentosactuales'],
                        idantecedentespersonales: idantecedentespersonales,
                        hipertension: hipertension,
                        cardiopatias: cardiopatias,
                        enfermedadesautoinmunes: enfermedadesautoinmunes,
                        tuberculosis: tuberculosis,
                        enfermedadestransmisionsexual: enfermedadestransmisionsexual,
                        cualets: cualets,
                        alergia: alergia,
                        cualalergia: cualalergia,
                        medicamentosactuales: medicamentosactuales
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
            message: 'Antecedente personal actualizado correctamente',
            data: antecedentespersonales
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