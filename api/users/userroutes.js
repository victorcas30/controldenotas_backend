import express from 'express';
import { 
    createUsuario,
    login,
    getUsuariosAdmin,
    setUpdateUser,
    getUsuario
} from './usercontroller.js';
import { validatetoken } from './auth/validatetoken.js';
const router = express.Router();

router.get('/user/:idusuario',validatetoken,getUsuario);
router.post('/users/login',login);
router.post('/users',validatetoken,createUsuario);
router.put('/users',validatetoken,setUpdateUser);
router.get('/usuarios',validatetoken,getUsuariosAdmin);

export {router as userRouter};
