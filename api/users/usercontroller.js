import { getUsers,createUser,loginUser,usersByDepto ,usersRecibenCorrespondencia,usersAplicaReporte} from './userservice.js';
import {hashSync,genSaltSync,compareSync} from 'bcrypt';
import jwt from 'jsonwebtoken';

const createUsuario = (req,res)=>{
    const salt = genSaltSync(10);
    req.body.password = hashSync(req.body.password,salt);
    const values = Object.values(req.body);
    createUser(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear usuario'});
        }else{
            res.status(200).json({success:true,message:'Usuario creado'});
        }
    });
}

const getUsuarios = (req,res) =>{
    getUsers((error,result)=>{
        if(error){
            res.status(500).json({success:true,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}
const getUsuariosAplicaReporte = (req,res) =>{
    usersAplicaReporte((error,result)=>{
        if(error){
            res.status(500).json({success:true,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}

const getUsersByDepto = (req,res) =>{
    const values = Object.values(req.params);
    usersByDepto(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}
const getUsersRecibenCorrespondencia = (req,res) =>{
    usersRecibenCorrespondencia((error,result)=>{
        if(error){
            console.log(error);
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:1,users:result});
        }
    });
}

const login = (req,res)=>{
    const usuario  = req.body.usuario;
    const password = req.body.password;
    loginUser (usuario,(error,result)=>{
        if(result.length !== 0){
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
        }else{
            res.status(200).json({login:false,message:'Usuario o contraseña incorrecta'});
        }
    });
}




export {
    getUsuarios,
    createUsuario,
    login,
    getUsersByDepto,
    getUsersRecibenCorrespondencia,
    getUsuariosAplicaReporte
};

