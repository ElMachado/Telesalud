"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.createantecedentesinmunologicos = createantecedentesinmunologicos;
exports.getantecedentesinmunologicos = getantecedentesinmunologicos;
exports.getOneantecedentesinmunologicos = getOneantecedentesinmunologicos;
exports.deleteantecedentesinmunologicos = deleteantecedentesinmunologicos;
exports.updateantecedentesinmunologicos = updateantecedentesinmunologicos;

var _antecedentesinmunologicos = _interopRequireDefault(require("../models/antecedentesinmunologicos"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function createantecedentesinmunologicos(req, res) {
  var _req$body, vacunaantirubeola, vacunaantitetanica, vacunaaplicadaultimolustro, newantecedentesinmunologicos;

  return regeneratorRuntime.async(function createantecedentesinmunologicos$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _req$body = req.body, vacunaantirubeola = _req$body.vacunaantirubeola, vacunaantitetanica = _req$body.vacunaantitetanica, vacunaaplicadaultimolustro = _req$body.vacunaaplicadaultimolustro;
          _context.prev = 1;
          _context.next = 4;
          return regeneratorRuntime.awrap(_antecedentesinmunologicos["default"].create({
            vacunaantirubeola: vacunaantirubeola,
            vacunaantitetanica: vacunaantitetanica,
            vacunaaplicadaultimolustro: vacunaaplicadaultimolustro
          }, {
            fields: ['vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro']
          }));

        case 4:
          newantecedentesinmunologicos = _context.sent;

          if (!newantecedentesinmunologicos) {
            _context.next = 7;
            break;
          }

          return _context.abrupt("return", res.json({
            message: 'antecedentes inmunologicos creados correctamente',
            data: newantecedentesinmunologicos
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

function getantecedentesinmunologicos(req, res) {
  var antecedentesinmunologicos;
  return regeneratorRuntime.async(function getantecedentesinmunologicos$(_context2) {
    while (1) {
      switch (_context2.prev = _context2.next) {
        case 0:
          _context2.prev = 0;
          _context2.next = 3;
          return regeneratorRuntime.awrap(_antecedentesinmunologicos["default"].findAll({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro']
          }));

        case 3:
          antecedentesinmunologicos = _context2.sent;
          res.json({
            data: antecedentesinmunologicos
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

function getOneantecedentesinmunologicos(req, res) {
  var idantecedentesinmunologicos, antecedentesinmunologicos;
  return regeneratorRuntime.async(function getOneantecedentesinmunologicos$(_context3) {
    while (1) {
      switch (_context3.prev = _context3.next) {
        case 0:
          _context3.prev = 0;
          idantecedentesinmunologicos = req.params.idantecedentesinmunologicos;
          _context3.next = 4;
          return regeneratorRuntime.awrap(_antecedentesinmunologicos["default"].findOne({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
            where: {
              idantecedentesinmunologicos: idantecedentesinmunologicos
            }
          }));

        case 4:
          antecedentesinmunologicos = _context3.sent;
          res.json({
            data: antecedentesinmunologicos
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

function deleteantecedentesinmunologicos(req, res) {
  var idantecedentesinmunologicos, deleteRowCount;
  return regeneratorRuntime.async(function deleteantecedentesinmunologicos$(_context4) {
    while (1) {
      switch (_context4.prev = _context4.next) {
        case 0:
          _context4.prev = 0;
          idantecedentesinmunologicos = req.params.idantecedentesinmunologicos;
          _context4.next = 4;
          return regeneratorRuntime.awrap(_antecedentesinmunologicos["default"].destroy({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
            where: {
              idantecedentesinmunologicos: idantecedentesinmunologicos
            }
          }));

        case 4:
          deleteRowCount = _context4.sent;
          res.json({
            message: 'antecedente inmunologico eliminado satisfactoriamente',
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

function updateantecedentesinmunologicos(req, res) {
  var idantecedentesinmunologicos, _req$body2, vacunaantirubeola, vacunaantitetanica, vacunaaplicadaultimolustro, antecedentesinmunologicos;

  return regeneratorRuntime.async(function updateantecedentesinmunologicos$(_context6) {
    while (1) {
      switch (_context6.prev = _context6.next) {
        case 0:
          _context6.prev = 0;
          idantecedentesinmunologicos = req.params.idantecedentesinmunologicos;
          _req$body2 = req.body, vacunaantirubeola = _req$body2.vacunaantirubeola, vacunaantitetanica = _req$body2.vacunaantitetanica, vacunaaplicadaultimolustro = _req$body2.vacunaaplicadaultimolustro;
          _context6.next = 5;
          return regeneratorRuntime.awrap(_antecedentesinmunologicos["default"].findAll({
            attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
            where: {
              idantecedentesinmunologicos: idantecedentesinmunologicos
            }
          }));

        case 5:
          antecedentesinmunologicos = _context6.sent;

          if (antecedentesinmunologicos.length > 0) {
            antecedentesinmunologicos.forEach(function _callee(antecedentesinmunologicos) {
              return regeneratorRuntime.async(function _callee$(_context5) {
                while (1) {
                  switch (_context5.prev = _context5.next) {
                    case 0:
                      _context5.next = 2;
                      return regeneratorRuntime.awrap(antecedentesinmunologicos.update({
                        attributes: ['idantecedentesinmunologicos', 'vacunaantirubeola', 'vacunaantitetanica', 'vacunaaplicadaultimolustro'],
                        idantecedentesinmunologicos: idantecedentesinmunologicos,
                        vacunaantirubeola: vacunaantirubeola,
                        vacunaantitetanica: vacunaantitetanica,
                        vacunaaplicadaultimolustro: vacunaaplicadaultimolustro
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
            message: 'Antecedente inmunologico actualizado correctamente',
            data: antecedentesinmunologicos
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