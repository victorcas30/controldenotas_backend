import express from 'express';
import { getUsuarios,createUsuario } from './usercontroller.js';

const router = express.Router();

router.get('/users',getUsuarios);

router.post('/create',createUsuario);

export {router as userRouter};
