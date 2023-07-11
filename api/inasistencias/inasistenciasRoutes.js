import  express  from "express";
import { crearInasistencia,getLasInasistencias,getInasistencia,setUpdateInasistencia,setDeleteInasistencia } from "./inasistenciasController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/inasistencias",validatetoken,crearInasistencia);
router.get("/inasistencias",validatetoken,getLasInasistencias);
router.get("/inasistencias/:idinasistencia",validatetoken,getInasistencia);
router.put("/inasistencias",validatetoken,setUpdateInasistencia);
router.put("/inasistencias/delete",validatetoken,setDeleteInasistencia);

export {router as inasistenciasRouter}