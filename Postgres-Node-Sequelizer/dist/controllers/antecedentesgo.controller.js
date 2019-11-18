"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.getantecedentesgo = getantecedentesgo;
exports.createantecedentesgo = createantecedentesgo;
exports.getOneantecedentesgo = getOneantecedentesgo;
exports.deleteantecedentesgo = deleteantecedentesgo;
exports.updateantecedentesgo = updateantecedentesgo;

var _antecedentesgo = _interopRequireDefault(require("../models/antecedentesgo"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

function getantecedentesgo(req, res) {
  var antecedentesgo;
  return regeneratorRuntime.async(function getantecedentesgo$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          _context.prev = 0;
          _context.next = 3;
          return regeneratorRuntime.awrap(_antecedentesgo["default"].findAll({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios']
          }));

        case 3:
          antecedentesgo = _context.sent;
          res.json({
            data: antecedentesgo
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

function createantecedentesgo(req, res) {
  var _req$body, edadmenarquia, cirugiagenitourinaria, cualcirugiagenitourinaria, infertilidad, enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria, embarazosprevios, newantecedentesgo;

  return regeneratorRuntime.async(function createantecedentesgo$(_context2) {
    while (1) {
      switch (_context2.prev = _context2.next) {
        case 0:
          _req$body = req.body, edadmenarquia = _req$body.edadmenarquia, cirugiagenitourinaria = _req$body.cirugiagenitourinaria, cualcirugiagenitourinaria = _req$body.cualcirugiagenitourinaria, infertilidad = _req$body.infertilidad, enfermedadpelvicainflamatoria = _req$body.enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria = _req$body.cualenfermedadpelvicainflamatoria, embarazosprevios = _req$body.embarazosprevios;
          _context2.prev = 1;
          _context2.next = 4;
          return regeneratorRuntime.awrap(_antecedentesgo["default"].create({
            edadmenarquia: edadmenarquia,
            cirugiagenitourinaria: cirugiagenitourinaria,
            cualcirugiagenitourinaria: cualcirugiagenitourinaria,
            infertilidad: infertilidad,
            enfermedadpelvicainflamatoria: enfermedadpelvicainflamatoria,
            cualenfermedadpelvicainflamatoria: cualenfermedadpelvicainflamatoria,
            embarazosprevios: embarazosprevios
          }, {
            fields: ['edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios']
          }));

        case 4:
          newantecedentesgo = _context2.sent;

          if (!newantecedentesgo) {
            _context2.next = 7;
            break;
          }

          return _context2.abrupt("return", res.json({
            message: 'antecedentes Go creados correctamente',
            data: newantecedentesgo
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

function getOneantecedentesgo(req, res) {
  var idantecedentesgo, antecedentesgo;
  return regeneratorRuntime.async(function getOneantecedentesgo$(_context3) {
    while (1) {
      switch (_context3.prev = _context3.next) {
        case 0:
          _context3.prev = 0;
          idantecedentesgo = req.params.idantecedentesgo;
          _context3.next = 4;
          return regeneratorRuntime.awrap(_antecedentesgo["default"].findOne({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
            where: {
              idantecedentesgo: idantecedentesgo
            }
          }));

        case 4:
          antecedentesgo = _context3.sent;
          res.json({
            data: antecedentesgo
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

function deleteantecedentesgo(req, res) {
  var idantecedentesgo, deleteRowCount;
  return regeneratorRuntime.async(function deleteantecedentesgo$(_context4) {
    while (1) {
      switch (_context4.prev = _context4.next) {
        case 0:
          _context4.prev = 0;
          idantecedentesgo = req.params.idantecedentesgo;
          _context4.next = 4;
          return regeneratorRuntime.awrap(_antecedentesgo["default"].destroy({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
            where: {
              idantecedentesgo: idantecedentesgo
            }
          }));

        case 4:
          deleteRowCount = _context4.sent;
          res.json({
            message: 'antecedente GO eliminado satisfactoriamente',
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

function updateantecedentesgo(req, res) {
  var idantecedentesgo, _req$body2, edadmenarquia, cirugiagenitourinaria, cualcirugiagenitourinaria, infertilidad, enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria, embarazosprevios, antecedentesgo;

  return regeneratorRuntime.async(function updateantecedentesgo$(_context6) {
    while (1) {
      switch (_context6.prev = _context6.next) {
        case 0:
          _context6.prev = 0;
          idantecedentesgo = req.params.idantecedentesgo;
          _req$body2 = req.body, edadmenarquia = _req$body2.edadmenarquia, cirugiagenitourinaria = _req$body2.cirugiagenitourinaria, cualcirugiagenitourinaria = _req$body2.cualcirugiagenitourinaria, infertilidad = _req$body2.infertilidad, enfermedadpelvicainflamatoria = _req$body2.enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria = _req$body2.cualenfermedadpelvicainflamatoria, embarazosprevios = _req$body2.embarazosprevios;
          _context6.next = 5;
          return regeneratorRuntime.awrap(_antecedentesgo["default"].findAll({
            attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
            where: {
              idantecedentesgo: idantecedentesgo
            }
          }));

        case 5:
          antecedentesgo = _context6.sent;

          if (antecedentesgo.length > 0) {
            antecedentesgo.forEach(function _callee(antecedentesgo) {
              return regeneratorRuntime.async(function _callee$(_context5) {
                while (1) {
                  switch (_context5.prev = _context5.next) {
                    case 0:
                      _context5.next = 2;
                      return regeneratorRuntime.awrap(antecedentesgo.update({
                        attributes: ['idantecedentesgo', 'edadmenarquia', 'cirugiagenitourinaria', 'cualcirugiagenitourinaria', 'infertilidad', 'enfermedadpelvicainflamatoria', 'cualenfermedadpelvicainflamatoria', 'embarazosprevios'],
                        idantecedentesgo: idantecedentesgo,
                        edadmenarquia: edadmenarquia,
                        cirugiagenitourinaria: cirugiagenitourinaria,
                        cualcirugiagenitourinaria: cualcirugiagenitourinaria,
                        infertilidad: infertilidad,
                        enfermedadpelvicainflamatoria: enfermedadpelvicainflamatoria,
                        cualenfermedadpelvicainflamatoria: cualenfermedadpelvicainflamatoria,
                        embarazosprevios: embarazosprevios
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
            message: 'Antecedente Go actualizado correctamente',
            data: antecedentesgo
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