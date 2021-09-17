import { getUsers,createUser,loginUser } from './userservice.js';
import {hashSync,genSaltSync,compareSync} from 'bcrypt';
import jwt from 'jsonwebtoken';

const createUsuario = (req,res)=>{
    const salt = genSaltSync(10);
    req.body.password = hashSync(req.body.password,salt);
    const values = Object.values(req.body);
    createUser(values,(error,results)=>{
        if(error){
            console.log(error); 
            return;
        }
        return res.json({success:'ok',data:results});
    });
}

const getUsuarios = (req,res) =>{
    getUsers((error,result)=>{
        if(error){
            console.log(error);
            return;
        }
        return res.json({success:1,users:result});
    });
}

const login = (req,res)=>{
    const usuario  = req.body.usuario;
    const password = req.body.password;
    loginUser(usuario,(error,result)=>{
        const dbpassword = result[0]?.password;
        const arePasswordEquals = compareSync(password,dbpassword);
        delete result[0].password;
        if(error){
            res.status(500).json({login:false,message:'Ocurrió un error'});
        }else{
            if(result.length !== 0 && arePasswordEquals){
                const jsontoken = jwt.sign({result:result},'rafparadaprogrammer',{expiresIn:'1d'});
                res.status(200).json({login:true,userInfo:result,token:jsontoken});
            }else{
                res.status(200).json({login:false,message:'Usuario o contraseña incorrecta'});
            }
        }
    });
}




export {getUsuarios,createUsuario,login};

