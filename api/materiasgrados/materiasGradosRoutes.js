import  express  from "express";
import {insertarElGradoConSusMaterias,getMateriasConYSinGrados,crearGrado,getLosGrados,getGrado,setUpdateGrado,setDeleteGrado } from "./materiasGradosController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/gradosmaterias",validatetoken,insertarElGradoConSusMaterias);
router.get("/gradosmaterias/:idGrado",validatetoken,getMateriasConYSinGrados);
router.get("/grados/:idgrado",validatetoken,getGrado);
router.put("/grados",validatetoken,setUpdateGrado);
router.put("/grados/delete",validatetoken,setDeleteGrado);

export {router as gradosMateriasRouter}