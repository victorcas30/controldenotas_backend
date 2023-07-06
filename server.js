import express from 'express';
import dotenv from 'dotenv';
import {userRouter} from './api/users/userroutes.js';
import { alumnosRouter } from './api/alumnos/alumnosroutes.js';
import { materiasRouter } from './api/materias/materiasRoutes.js';
import { errorHandler } from './config/errorHandler.js';
import cors from 'cors';
const app = express();
dotenv.config();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended:false}));
const port = process.env.SERVER_PORT;

app.use('/api',userRouter);
app.use('/api',alumnosRouter);
app.use('/api',materiasRouter);

app.use(errorHandler);
app.listen(port,()=>{
    console.log('server running on port '+port);
});



