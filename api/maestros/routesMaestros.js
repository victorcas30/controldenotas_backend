import { Router } from "express";
import {validatetoken} from '../../api/users/auth/validatetoken.js';
import { crearMaestros,getMaestros,getUnMaestro,updateMaestros,deleteMaestros } from "./controllersMaestros.js";

const router = Router();

router.get('/maestros',validatetoken,getMaestros);
router.get('/maestros/:idmaestro',validatetoken,getUnMaestro);
router.post('/maestros',validatetoken,crearMaestros);
router.put('/maestros',validatetoken,updateMaestros);
router.put('/maestros/eliminar',validatetoken,deleteMaestros);

export {router as maestrosRouter}