import {Router} from 'express';
const router= Router();

import { createantecedentesfamiliares, getantecedentesfamiliares, getOneantecedentesfamiliares, deleteantecedentesfamiliares, updateantecedentesfamiliares } from '../controllers/antecedentesfamiliares.controller';

// /api/antecedentesfamiliares/
router.post('/', createantecedentesfamiliares);
router.get('/',getantecedentesfamiliares);
router.get('/:idantecedentesfamiliares',getOneantecedentesfamiliares);
router.delete('/:idantecedentesfamiliares',deleteantecedentesfamiliares);
router.put('/:idantecedentesfamiliares',updateantecedentesfamiliares);
export default router;