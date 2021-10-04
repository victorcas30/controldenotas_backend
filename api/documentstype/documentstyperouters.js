import express from 'express';
import { validatetoken } from '../users/auth/validatetoken.js';
import { getDocumentsType } from "./documentstypecontroller.js";

const router = express.Router();

router.get('/documentstype',validatetoken,getDocumentsType);

export {router as documentstypeRouter};

