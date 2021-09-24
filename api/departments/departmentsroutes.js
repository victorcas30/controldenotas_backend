import express from 'express';
import { getCyrDepartments } from "./departmentscontrollers.js";
import { validatetoken } from "../users/auth/validatetoken.js";
const router = express.Router();

router.get('/cyrdepartments',validatetoken,getCyrDepartments);

export {router as cyrdepartmentsRouter};
