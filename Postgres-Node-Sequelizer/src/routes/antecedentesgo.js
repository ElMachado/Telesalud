import { Router} from 'express';
const router= Router();

import {createantecedentesgo,getantecedentesgo,getOneantecedentesgo, deleteantecedentesgo, updateantecedentesgo } from '../controllers/antecedentesgo.controller';

// /api/antecedentesgo/
router.post('/', createantecedentesgo);
router.get('/',getantecedentesgo);
router.get('/:idantecedentesgo',getOneantecedentesgo);
router.delete('/:idantecedentesgo',deleteantecedentesgo);
router.put('/:idantecedentesgo',updateantecedentesgo);

export default router;