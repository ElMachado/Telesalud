"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _express = require("express");

var _antecedentesfamiliares = require("../controllers/antecedentesfamiliares.controller");

var router = (0, _express.Router)();
// /api/antecedentesfamiliares/
router.post('/', _antecedentesfamiliares.createantecedentesfamiliares);
router.get('/', _antecedentesfamiliares.getantecedentesfamiliares);
router.get('/:idantecedentesfamiliares', _antecedentesfamiliares.getOneantecedentesfamiliares);
router["delete"]('/:idantecedentesfamiliares', _antecedentesfamiliares.deleteantecedentesfamiliares);
router.put('/:idantecedentesfamiliares', _antecedentesfamiliares.updateantecedentesfamiliares);
var _default = router;
exports["default"] = _default;