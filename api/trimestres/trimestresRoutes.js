import  express  from "express";
import { crearTrimestre,getLosTrimestres,getTrimestre,setUpdateTrimestre,setDeleteTrimestre } from "./trimestresController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/trimestres",validatetoken,crearTrimestre);
router.get("/trimestres",validatetoken,getLosTrimestres);
router.get("/trimestres/:idtrimestre",validatetoken,getTrimestre);
router.put("/trimestres",validatetoken,setUpdateTrimestre);
router.put("/trimestres/delete",validatetoken,setDeleteTrimestre);

export {router as trimestresRouter}