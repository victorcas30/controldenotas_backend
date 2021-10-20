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
    setReceiveCorrespondence,
    setReturnCorrespondenceToanohterDepartment,
    getCorrespondenceAsignedToUser,
    setRequestApproval,
    getcorrespondenceToApproval,
    setApproveCorrespondence,
    setCorrespondenceSend
} from './correspondencecontrollers.js';

const router = express.Router();


router.get('/correspondence/:idusuario',validatetoken,getCorrespondenceRecieviedByUser);
router.get('/correspondenceid/:idcorrespondencia',validatetoken,getCorrespondenceRecieviedById);
router.get('/correspondencedepto/:iddepartment',validatetoken,getCorrespondenceRecieviedByDepto);
router.get('/correspondencetoapproval/:iddepartamento/:idusuario/:estado',validatetoken,getcorrespondenceToApproval);
router.get('/correspondence/status/:idusuario/:estado',validatetoken,getCorrespondenceAsignedToUser);
router.post('/correspondence',validatetoken,createCorrespondenceReceived);
router.post('/sendcorrespondence',validatetoken,setCorrespondenceSend);
router.put('/correspondence',validatetoken,setEditCorrespondenceById);
router.put('/deleteCorrespondenceId',validatetoken,deleteCorrespondenceId);
router.put('/assigncorrespondence',validatetoken,setAssignCorrespondence);
router.put('/receivecorrespondence',validatetoken,setReceiveCorrespondence);
router.put('/returncorrespondence',validatetoken,setReturnCorrespondenceToanohterDepartment);
router.put('/requestapproval',validatetoken,setRequestApproval);
router.put('/approvecorrespondence',validatetoken,setApproveCorrespondence);

export {router as correspondenceRouter};