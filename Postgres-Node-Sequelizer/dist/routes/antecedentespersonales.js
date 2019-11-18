"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _express = require("express");

var _antecedentespersonales = require("../controllers/antecedentespersonales.controller");

var router = (0, _express.Router)();
// /api/antecedentespersonales/
router.post('/', _antecedentespersonales.createantecedentespersonales);
router.get('/', _antecedentespersonales.getantecedentespersonales);
router.get('/:idantecedentespersonales', _antecedentespersonales.getOneantecedentespersonales);
router["delete"]('/:idantecedentespersonales', _antecedentespersonales.deleteantecedentespersonales);
router.put('/:idantecedentespersonales', _antecedentespersonales.updateantecedentespersonales);
var _default = router;
exports["default"] = _default;