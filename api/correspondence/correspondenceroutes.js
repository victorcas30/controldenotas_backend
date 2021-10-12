import express from 'express';
import { validatetoken } from '../users/auth/validatetoken.js';
import { 
    createCorrespondenceReceived,
    getCorrespondenceRecieviedByUser,
    getCorrespondenceRecieviedById,
    setEditCorrespondenceById,
    deleteCorrespondenceId,
    getCorrespondenceRecieviedByDepto,
    setAssignCorrespondence,
    setReceiveCorrespondence
} from './correspondencecontrollers.js';

const router = express.Router();

router.post('/correspondence',validatetoken,createCorrespondenceReceived);

router.get('/correspondence/:idusuario',validatetoken,getCorrespondenceRecieviedByUser);
router.get('/correspondenceid/:idcorrespondencia',validatetoken,getCorrespondenceRecieviedById);
router.get('/correspondencedepto/:iddepartment',validatetoken,getCorrespondenceRecieviedByDepto);
router.put('/correspondence',validatetoken,setEditCorrespondenceById);
router.put('/deleteCorrespondenceId',validatetoken,deleteCorrespondenceId);
router.put('/assigncorrespondence',validatetoken,setAssignCorrespondence);
router.put('/receivecorrespondence',validatetoken,setReceiveCorrespondence);

export {router as correspondenceRouter};