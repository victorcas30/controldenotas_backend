import jwt from 'jsonwebtoken';

const validatetoken = (req,res,next)=>{
    let token = req.get('authorization');
    if(token){
        token = token.slice(7);
        jwt.verify(token,'rafparadaprogrammer',(error,decoded)=>{
            if(error){
                return res.json({success:0,message:'Token incorrecto'});
            }else{
                req.decoded = decoded;
                next();
            }
        });
    }else{
        return res.json({message:'Acceso denegado, No está autorizado para acceder a este recurso.'});
    }

}

export {validatetoken}