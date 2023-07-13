import  express  from "express";
import { crearGrado,getLosGrados,getGrado,setUpdateGrado,setDeleteGrado } from "./gradosController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/grados",validatetoken,crearGrado);
router.get("/grados",validatetoken,getLosGrados);
router.get("/grados/:idgrado",validatetoken,getGrado);
router.put("/grados",validatetoken,setUpdateGrado);
router.put("/grados/delete",validatetoken,setDeleteGrado);

export {router as gradosRouter}