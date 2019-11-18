import { Router} from 'express';
const router= Router();


import {createantecedentessociodemograficos, getantecedentessociodemograficos, getOneantecedentessociodemograficos, deleteantecedentessociodemograficos,updateantecedentessociodemograficos} from '../controllers/antecedentessociodemograficos.controller';

// /api/antecedentespersonales/
router.post('/',createantecedentessociodemograficos);
router.get('/',getantecedentessociodemograficos);
router.get('/:idantecedentessociodemograficos',getOneantecedentessociodemograficos);
router.delete('/:idantecedentessociodemograficos',deleteantecedentessociodemograficos);
router.put('/:idantecedentessociodemograficos',updateantecedentessociodemograficos);




export default router;