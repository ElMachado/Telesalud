"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.createantecedentessociodemograficos = createantecedentessociodemograficos;
exports.getantecedentessociodemograficos = getantecedentessociodemograficos;
exports.getOneantecedentessociodemograficos = getOneantecedentessociodemograficos;
exports.deleteantecedentessociodemograficos = deleteantecedentessociodemograficos;
exports.updateantecedentessociodemograficos = updateantecedentessociodemograficos;

var _antecedentessociodemograficos = _interopRequireDefault(require("../models/antecedentessociodemograficos"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function createantecedentessociodemograficos(req, res) {
  var _req$body, etnia, vivesola, estadocivil, violenciaintrafamiliarreciente, newantecedentessociodemograficos;

  return regeneratorRuntime.async(function createantecedentessociodemograficos$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _req$body = req.body, etnia = _req$body.etnia, vivesola = _req$body.vivesola, estadocivil = _req$body.estadocivil, violenciaintrafamiliarreciente = _req$body.violenciaintrafamiliarreciente;
          _context.prev = 1;
          _context.next = 4;
          return regeneratorRuntime.awrap(_antecedentessociodemograficos["default"].create({
            etnia: etnia,
            vivesola: vivesola,
            estadocivil: estadocivil,
            violenciaintrafamiliarreciente: violenciaintrafamiliarreciente
          }, {
            fields: ['etnia', 'vivesola', 'estadocivil', 'violenciaintrafamiliarreciente']
          }));

        case 4:
          newantecedentessociodemograficos = _context.sent;

          if (!newantecedentessociodemograficos) {
            _context.next = 7;
            break;
          }

          return _context.abrupt("return", res.json({
            message: 'antecedent socio-demografico creado correctamente',
            data: newantecedentessociodemograficos
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

function getantecedentessociodemograficos(req, res) {
  var antecedentessociodemograficos;
  return regeneratorRuntime.async(function getantecedentessociodemograficos$(_context2) {
    while (1) {
      switch (_context2.prev = _context2.next) {
        case 0:
          _context2.prev = 0;
          _context2.next = 3;
          return regeneratorRuntime.awrap(_antecedentessociodemograficos["default"].findAll({
            attributes: ['idantecedentessociodemograficos', 'etnia', 'vivesola', 'estadocivil', 'violenciaintrafamiliarreciente']
          }));

        case 3:
          antecedentessociodemograficos = _context2.sent;
          res.json({
            data: antecedentessociodemograficos
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

function getOneantecedentessociodemograficos(req, res) {
  var idantecedentessociodemograficos, antecedentessociodemograficos;
  return regeneratorRuntime.async(function getOneantecedentessociodemograficos$(_context3) {
    while (1) {
      switch (_context3.prev = _context3.next) {
        case 0:
          _context3.prev = 0;
          idantecedentessociodemograficos = req.params.idantecedentessociodemograficos;
          _context3.next = 4;
          return regeneratorRuntime.awrap(_antecedentessociodemograficos["default"].findOne({
            attributes: ['idantecedentessociodemograficos', 'etnia', 'vivesola', 'estadocivil', 'violenciaintrafamiliarreciente'],
            where: {
              idantecedentessociodemograficos: idantecedentessociodemograficos
            }
          }));

        case 4:
          antecedentessociodemograficos = _context3.sent;
          res.json({
            data: antecedentessociodemograficos
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

function deleteantecedentessociodemograficos(req, res) {
  var idantecedentessociodemograficos, deleteRowCount;
  return regeneratorRuntime.async(function deleteantecedentessociodemograficos$(_context4) {
    while (1) {
      switch (_context4.prev = _context4.next) {
        case 0:
          _context4.prev = 0;
          idantecedentessociodemograficos = req.params.idantecedentessociodemograficos;
          _context4.next = 4;
          return regeneratorRuntime.awrap(_antecedentessociodemograficos["default"].destroy({
            attributes: ['idantecedentessociodemograficos', 'etnia', 'vivesola', 'estadocivil', 'violenciaintrafamiliarreciente'],
            where: {
              idantecedentessociodemograficos: idantecedentessociodemograficos
            }
          }));

        case 4:
          deleteRowCount = _context4.sent;
          res.json({
            message: 'antecedente socio-demografico eliminado satisfactoriamente',
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

function updateantecedentessociodemograficos(req, res) {
  var idantecedentessociodemograficos, _req$body2, etnia, vivesola, estadocivil, violenciaintrafamiliarreciente, antecedentessociodemograficos;

  return regeneratorRuntime.async(function updateantecedentessociodemograficos$(_context6) {
    while (1) {
      switch (_context6.prev = _context6.next) {
        case 0:
          _context6.prev = 0;
          idantecedentessociodemograficos = req.params.idantecedentessociodemograficos;
          _req$body2 = req.body, etnia = _req$body2.etnia, vivesola = _req$body2.vivesola, estadocivil = _req$body2.estadocivil, violenciaintrafamiliarreciente = _req$body2.violenciaintrafamiliarreciente;
          _context6.next = 5;
          return regeneratorRuntime.awrap(_antecedentessociodemograficos["default"].findAll({
            attributes: ['idantecedentessociodemograficos', 'etnia', 'vivesola', 'estadocivil', 'violenciaintrafamiliarreciente'],
            where: {
              idantecedentessociodemograficos: idantecedentessociodemograficos
            }
          }));

        case 5:
          antecedentessociodemograficos = _context6.sent;

          if (antecedentessociodemograficos.length > 0) {
            antecedentessociodemograficos.forEach(function _callee(antecedentessociodemograficos) {
              return regeneratorRuntime.async(function _callee$(_context5) {
                while (1) {
                  switch (_context5.prev = _context5.next) {
                    case 0:
                      _context5.next = 2;
                      return regeneratorRuntime.awrap(antecedentessociodemograficos.update({
                        attributes: ['idantecedentessociodemograficos', 'etnia', 'vivesola', 'estadocivil', 'violenciaintrafamiliarreciente'],
                        idantecedentessociodemograficos: idantecedentessociodemograficos,
                        etnia: etnia,
                        vivesola: vivesola,
                        estadocivil: estadocivil,
                        violenciaintrafamiliarreciente: violenciaintrafamiliarreciente
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
            message: 'Antecedente socio-demografico actualizado correctamente',
            data: antecedentessociodemograficos
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