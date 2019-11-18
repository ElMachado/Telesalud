"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _express = require("express");

var _antecedentessociodemograficos = require("../controllers/antecedentessociodemograficos.controller");

var router = (0, _express.Router)();
// /api/antecedentespersonales/
router.post('/', _antecedentessociodemograficos.createantecedentessociodemograficos);
router.get('/', _antecedentessociodemograficos.getantecedentessociodemograficos);
router.get('/:idantecedentessociodemograficos', _antecedentessociodemograficos.getOneantecedentessociodemograficos);
router["delete"]('/:idantecedentessociodemograficos', _antecedentessociodemograficos.deleteantecedentessociodemograficos);
router.put('/:idantecedentessociodemograficos', _antecedentessociodemograficos.updateantecedentessociodemograficos);
var _default = router;
exports["default"] = _default;