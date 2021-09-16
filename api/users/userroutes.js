import express from 'express';
import { getUsuarios } from './usercontroller.js';

const router = express.Router();

router.get('/users',getUsuarios);

export {router as userRouter};
