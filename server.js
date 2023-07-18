import express from 'express';
import dotenv from 'dotenv';
import {userRouter} from './api/users/userroutes.js';
import { alumnosRouter } from './api/alumnos/alumnosroutes.js';
import { materiasRouter } from './api/materias/materiasRoutes.js';
import { valoresRouter } from './api/valores/valoresRoutes.js';
import { inasistenciasRouter } from './api/inasistencias/inasistenciasRoutes.js';
import { trimestresRouter } from './api/trimestres/trimestresRoutes.js';
import { gradosRouter } from './api/grados/gradosRoutes.js';
import { gradosMateriasRouter } from './api/materiasgrados/materiasGradosRoutes.js';
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
app.use('/api',valoresRouter);
app.use('/api',inasistenciasRouter);
app.use('/api',trimestresRouter);
app.use('/api',gradosRouter);
app.use('/api',gradosMateriasRouter);


//app.use(errorHandler);

app.listen(port,()=>{
    console.log('server running on port '+port);
});



