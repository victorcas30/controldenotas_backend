import express from "express";
import { validatetoken } from "../users/auth/validatetoken.js";
import { getCyrInsuranceCompanies } from "./insurancecompaniescontroller.js";
const router = express.Router();

router.get('/insurancecompanies',validatetoken,getCyrInsuranceCompanies);

export {router as insuranceCompaniesRouter};
