import express from 'express';
import dotenv from 'dotenv';
import {userRouter} from './api/users/userroutes.js';
import { cyrdepartmentsRouter } from './api/departments/departmentsroutes.js';
import { insuranceCompaniesRouter } from './api/insurancecompanies/insurrancecompaniesroutes.js';
import { correspondenceRouter } from './api/correspondence/correspondenceroutes.js';
import cors from 'cors';
const app = express();
dotenv.config();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended:false}));
const port = process.env.SERVER_PORT;

app.use('/api',userRouter);
app.use('/api',cyrdepartmentsRouter);
app.use('/api',insuranceCompaniesRouter);
app.use('/api',correspondenceRouter);

app.listen(port,()=>{
    console.log('server running on port '+port);
});



