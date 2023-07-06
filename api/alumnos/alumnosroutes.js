import express from 'express';
import { getLosAlumnos,createElAlumno,setUpdateAlumno,getAlumno } from "./alumnoscontrollers.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.get('/alumnos',validatetoken,getLosAlumnos);
router.get('/alumnos/:idalumno',validatetoken,getAlumno);
router.post('/alumnos',validatetoken,createElAlumno);
router.put('/alumnos',validatetoken,setUpdateAlumno);

export {router as alumnosRouter};
