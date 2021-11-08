import express from 'express';
import { 
    getUsuarios,
    createUsuario,
    login,
    getUsersByDepto,
    getUsersRecibenCorrespondencia,
    getUsuariosAplicaReporte,
    getUsuariosAdmin,
    createOpcion,
    getOpciones,
    setUpdateOpciones,
    createRol,
    getRoles,
    setUpdateRoles
} from './usercontroller.js';
import { validatetoken } from './auth/validatetoken.js';
const router = express.Router();

router.get('/users',validatetoken,getUsuarios);

router.get('/usersbydeptos/:iddepartamento',validatetoken,getUsersByDepto);

router.get('/usersrecibencorrespondencia',validatetoken,getUsersRecibenCorrespondencia);

router.get('/usersaplicanreporte',validatetoken,getUsuariosAplicaReporte);

router.get('/opciones',validatetoken,getOpciones);

router.get('/usuariosadmin',validatetoken,getUsuariosAdmin);

router.get('/roles',validatetoken,getRoles);

router.post('/users',validatetoken,createUsuario);

router.post('/users/login',login);

router.post('/opciones',validatetoken,createOpcion);

router.post('/roles',validatetoken,createRol);

router.put('/opciones',validatetoken,setUpdateOpciones);

router.put('/roles',validatetoken,setUpdateRoles);

export {router as userRouter};
