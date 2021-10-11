import express from 'express';
import { validatetoken } from '../users/auth/validatetoken.js';
import { createCorrespondenceReceived,getCorrespondenceRecieviedByUser,getCorrespondenceRecieviedById,setEditCorrespondenceById,deleteCorrespondenceId,getCorrespondenceRecieviedByDepto } from './correspondencecontrollers.js';
const router = express.Router();

router.post('/correspondence',validatetoken,createCorrespondenceReceived);

router.get('/correspondence/:idusuario',validatetoken,getCorrespondenceRecieviedByUser);
router.get('/correspondenceid/:idcorrespondencia',validatetoken,getCorrespondenceRecieviedById);
router.get('/correspondencedepto/:iddepartment',validatetoken,getCorrespondenceRecieviedByDepto);
router.put('/correspondence',validatetoken,setEditCorrespondenceById);
router.put('/deleteCorrespondenceId',validatetoken,deleteCorrespondenceId);

export {router as correspondenceRouter};