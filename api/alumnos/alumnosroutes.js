import express from 'express';
import { getLosAlumnos,createElAlumno,setUpdateAlumno,getAlumno,setDeleteAlumno,getAlumnosPromise1 } from "./alumnoscontrollers.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.get('/alumnos',validatetoken,getLosAlumnos);
router.get('/alumnospromise',validatetoken,getAlumnosPromise1);
router.get('/alumnos/:idalumno',validatetoken,getAlumno);
router.post('/alumnos',validatetoken,createElAlumno);
router.put('/alumnos',validatetoken,setUpdateAlumno);
router.put('/alumnos/delete',validatetoken,setDeleteAlumno);

export {router as alumnosRouter};
