import express from 'express';
import { getUsuarios,createUsuario,login } from './usercontroller.js';
import { validatetoken } from './auth/validatetoken.js';
const router = express.Router();

router.get('/users',validatetoken,getUsuarios);

router.post('/create',validatetoken,createUsuario);

router.post('/login',login);

export {router as userRouter};
