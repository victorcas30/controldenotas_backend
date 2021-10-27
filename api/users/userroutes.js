import express from 'express';
import { getUsuarios,createUsuario,login,getUsersByDepto } from './usercontroller.js';
import { validatetoken } from './auth/validatetoken.js';
const router = express.Router();

router.get('/users',validatetoken,getUsuarios);

router.get('/usersbydeptos/:iddepartamento',validatetoken,getUsersByDepto);

router.post('/users',validatetoken,createUsuario);

router.post('/users/login',login);

export {router as userRouter};
