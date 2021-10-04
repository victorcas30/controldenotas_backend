import express from 'express';
import { validatetoken } from '../users/auth/validatetoken.js';
import { createCorrespondenceReceived,getCorrespondenceRecieviedByUser } from './correspondencecontrollers.js';
const router = express.Router();

router.post('/correspondence',validatetoken,createCorrespondenceReceived);

router.get('/correspondence/:idusuario',validatetoken,getCorrespondenceRecieviedByUser);

export {router as correspondenceRouter};