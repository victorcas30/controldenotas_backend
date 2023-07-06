import  express  from "express";
import { crearMateria } from "./materiasController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/materias",crearMateria);

export {router as materiasRouter}