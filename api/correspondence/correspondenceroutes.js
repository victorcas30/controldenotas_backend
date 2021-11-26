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
    setCorrespondenceSend,
    getcorrespondenceToApprovalCobros,
    setSendCorrespondence,
    getCorrespondenceInRoute,
    setFinishCorrespondence,
    setEditMensajeroCorrespondence,
    getCorrespondencePendienteReport,
    setGetCorrespondencePendienteReport,
    setGetUsersToReport,
    setGetCorresPendingByUserReport,
    getAccesosByRol,
    setAddDeleteAccesos,
    setAyudaCorrespondence,
    SetArchivarCorrespondence,
    getCorrespondenciaPendienteAprobacionConsultaGeneral,
    setDevolverCorrespondence
} from './correspondencecontrollers.js';

const router = express.Router();


router.get('/correspondence/:idusuario',validatetoken,getCorrespondenceRecieviedByUser);
router.get('/correspondenceid/:idcorrespondencia',validatetoken,getCorrespondenceRecieviedById);
router.get('/correspondencedepto/:iddepartment',validatetoken,getCorrespondenceRecieviedByDepto);
router.get('/correspondencetoapproval/:iddepartamento/:idusuario',validatetoken,getcorrespondenceToApproval);
router.get('/correspondenciapendienteaprobacioncg/:iddepartamento/:idusuario',validatetoken,getCorrespondenciaPendienteAprobacionConsultaGeneral);
router.get('/correspondencetoapprovalcobros/:iddepartamento/:idusuario',validatetoken,getcorrespondenceToApprovalCobros);
router.get('/correspondence/status/:idusuario/:estado',validatetoken,getCorrespondenceAsignedToUser);
router.get('/correspondenceinroute/:idmensajero/:iddepartamento/:idusuario/:estado',validatetoken,getCorrespondenceInRoute);
router.get('/reportecorrespondenciapendiente',validatetoken,getCorrespondencePendienteReport);
router.get('/correspondenciarecibida/:fecha/:ampm',validatetoken,setGetCorrespondencePendienteReport);
router.get('/trabajopendienteporuser/:idusuario',validatetoken,setGetCorresPendingByUserReport);
router.get('/userstoreport',validatetoken,setGetUsersToReport);
router.get('/accesos/:idrol',validatetoken,getAccesosByRol);
router.post('/correspondence',validatetoken,createCorrespondenceReceived);
router.post('/sendcorrespondence',validatetoken,setCorrespondenceSend);
router.post('/archivarcorrespondencia',validatetoken,SetArchivarCorrespondence);
router.put('/correspondence',validatetoken,setEditCorrespondenceById);
router.put('/deleteCorrespondenceId',validatetoken,deleteCorrespondenceId);
router.put('/assigncorrespondence',validatetoken,setAssignCorrespondence);
router.put('/receivecorrespondence',validatetoken,setReceiveCorrespondence);
router.put('/returncorrespondence',validatetoken,setReturnCorrespondenceToanohterDepartment);
router.put('/requestapproval',validatetoken,setRequestApproval);
router.put('/approvecorrespondence',validatetoken,setApproveCorrespondence);
router.put('/sendcorrespondence',validatetoken,setSendCorrespondence);
router.put('/finishcorrespondence',validatetoken,setFinishCorrespondence);
router.put('/editmensajerocorrespondence',validatetoken,setEditMensajeroCorrespondence);
router.put('/adddeleteacceso',validatetoken,setAddDeleteAccesos);
router.put('/ayudarasignacion',validatetoken,setAyudaCorrespondence);
router.put('/devolvercorrespondencia',validatetoken,setDevolverCorrespondence);

export {router as correspondenceRouter};