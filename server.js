import express from 'express';
import dotenv from 'dotenv';
import {userRouter} from './api/users/userroutes.js';
import cors from 'cors';
const app = express();
dotenv.config();
app.use(cors());
const port = process.env.SERVER_PORT;

app.use('api/users',userRouter);

app.listen(port,()=>{
    console.log('server running on port '+port);
});



