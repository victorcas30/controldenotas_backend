import express from 'express';
import { validatetoken } from '../users/auth/validatetoken.js';
import { createCorrespondenceReceived } from './correspondencecontrollers.js';
const router = express.Router();

router.post('/correspondence',validatetoken,createCorrespondenceReceived);

export {router as correspondenceRouter};