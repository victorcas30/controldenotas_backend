import  express  from "express";
import { crearValor,getLosValores,getValor,setUpdateValor } from "./valoresController.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.post("/valores",validatetoken,crearValor);
router.get("/valores",validatetoken,getLosValores);
router.get("/valores/:idvalor",validatetoken,getValor);
router.put("/valores",validatetoken,setUpdateValor);

export {router as valoresRouter}