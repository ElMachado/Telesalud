import { Router} from 'express';
const router= Router();

import {createantecedentespersonales,getantecedentespersonales, getOneantecedentespersonales, deleteantecedentespersonales,updateantecedentespersonales} from '../controllers/antecedentespersonales.controller';

// /api/antecedentespersonales/
router.post('/',createantecedentespersonales);
router.get('/',getantecedentespersonales);
router.get('/:idantecedentespersonales',getOneantecedentespersonales);
router.delete('/:idantecedentespersonales',deleteantecedentespersonales);
router.put('/:idantecedentespersonales',updateantecedentespersonales);

export default router;