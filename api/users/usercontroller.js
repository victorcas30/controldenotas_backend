import { 
    createUser,
    loginUser,
    users,
    updateuser,
    getUnUsuario
} from './userservice.js';
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

const getUsuario = (req,res) =>{
    const values = Object.values(req.params);
    getUnUsuario(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,users:result});
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

const getUsuariosAdmin = (req,res) =>{
    users((error,result)=>{
        if(error){
            res.status(500).json({success:true,message:'Error al consultar usuarios'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}

const setUpdateUser = (req,res)=>{
    const values = req.body;
    updateuser(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar usuario'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}

export {
    createUsuario,
    login,
    getUsuariosAdmin,
    setUpdateUser,
    getUsuario
};

