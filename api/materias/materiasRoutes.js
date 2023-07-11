import  express  from "express";
import { crearMateria,getLasMaterias,getMateria,setUpdateMateria,setDeleteMateria } from "./materiasController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/materias",validatetoken,crearMateria);
router.get("/materias",validatetoken,getLasMaterias);
router.get("/materias/:idmateria",validatetoken,getMateria);
router.put("/materias",validatetoken,setUpdateMateria);
router.put("/materias/delete",validatetoken,setDeleteMateria);

export {router as materiasRouter}