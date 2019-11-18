"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _express = require("express");

var _antecedentesinmunologicos = require("../controllers/antecedentesinmunologicos.controller");

var router = (0, _express.Router)();
// /api/antecedentesinmunologicos/
router.post('/', _antecedentesinmunologicos.createantecedentesinmunologicos);
router.get('/', _antecedentesinmunologicos.getantecedentesinmunologicos);
router.get('/:idantecedentesinmunologicos', _antecedentesinmunologicos.getOneantecedentesinmunologicos);
router["delete"]('/:idantecedentesinmunologicos', _antecedentesinmunologicos.deleteantecedentesinmunologicos);
router.put('/:idantecedentesinmunologicos', _antecedentesinmunologicos.updateantecedentesinmunologicos);
var _default = router;
exports["default"] = _default;