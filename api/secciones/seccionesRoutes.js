import  express  from "express";
import { crearSeccion,getLasSecciones,getSeccion,setUpdateSeccion,setDeleteSeccion } from "./seccionesController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/secciones",validatetoken,crearSeccion);
router.get("/secciones",validatetoken,getLasSecciones);
router.get("/secciones/:idseccion",validatetoken,getSeccion);
router.put("/secciones",validatetoken,setUpdateSeccion);
router.put("/secciones/delete",validatetoken,setDeleteSeccion);

export {router as seccionesRouter}