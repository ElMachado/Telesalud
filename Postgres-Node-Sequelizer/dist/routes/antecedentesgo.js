"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;

var _express = require("express");

var _antecedentesgo = require("../controllers/antecedentesgo.controller");

var router = (0, _express.Router)();
// /api/antecedentesgo/
router.post('/', _antecedentesgo.createantecedentesgo);
router.get('/', _antecedentesgo.getantecedentesgo);
router.get('/:idantecedentesgo', _antecedentesgo.getOneantecedentesgo);
router["delete"]('/:idantecedentesgo', _antecedentesgo.deleteantecedentesgo);
router.put('/:idantecedentesgo', _antecedentesgo.updateantecedentesgo);
var _default = router;
exports["default"] = _default;