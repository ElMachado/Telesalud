import { Router} from 'express';
const router= Router();

import {createantecedentesinmunologicos,getantecedentesinmunologicos,getOneantecedentesinmunologicos,deleteantecedentesinmunologicos,updateantecedentesinmunologicos} from '../controllers/antecedentesinmunologicos.controller';

// /api/antecedentesinmunologicos/
router.post('/',createantecedentesinmunologicos);
router.get('/',getantecedentesinmunologicos);
router.get('/:idantecedentesinmunologicos',getOneantecedentesinmunologicos);
router.delete('/:idantecedentesinmunologicos',deleteantecedentesinmunologicos);
router.put('/:idantecedentesinmunologicos',updateantecedentesinmunologicos);

export default router;