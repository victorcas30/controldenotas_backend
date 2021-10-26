import express from "express";
import { getMensajeros } from "./mensajeroscontroller.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.get('/mensajeros',validatetoken,getMensajeros);

export {router as mensajerosRouter}
