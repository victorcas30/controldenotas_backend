import express from 'express';
import { getLosAlumnos,createElAlumno } from "./alumnoscontrollers.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.get('/alumnos',validatetoken,getLosAlumnos);
router.post('/alumnos',validatetoken,createElAlumno);

export {router as alumnosRouter};
