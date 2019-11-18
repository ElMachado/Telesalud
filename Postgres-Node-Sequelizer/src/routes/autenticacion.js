import {Router} from 'express';
const router= Router();

import {getautenticacion,createautenticacion,getOneautenticacion,deleteautenticacion,updateautenticacion } from '../controllers/autenticacion.controller';

router.post('/',createautenticacion);
router.get('/',getautenticacion);
router.get('/:nombre',getOneautenticacion);
router.delete('/:nombre',deleteautenticacion);
router.put('/:nombre',updateautenticacion);

export default router;