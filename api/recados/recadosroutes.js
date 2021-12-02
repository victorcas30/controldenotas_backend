import express from 'express';
import {validatetoken} from '../../api/users/auth/validatetoken.js';
import { createRecado,getMyRecados,setEditarRecado,getAsignarRecados,setAsignarEliminarRecados,getRecadosConsultaHistorial } from './recadoscontroller.js';
const router = express.Router();

router.post('/recados',validatetoken,createRecado);
router.get('/recados/:idusuario',validatetoken,getMyRecados);
router.get('/recados/:filtro/:tipofiltro',validatetoken,getRecadosConsultaHistorial);
router.get('/recados',validatetoken,getAsignarRecados);
router.put('/recados',validatetoken,setEditarRecado);
router.put('/asignareliminarrecados',validatetoken,setAsignarEliminarRecados);

export {router as recadosRouter};