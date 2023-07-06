import { insertarMateria } from "./materiasservices.js";

const crearMateria = (req,res)=>{
    const values = Object.values(req.body);
    insertarMateria(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear materia'});
        }else{
            res.status(200).json({success:true,message:'Materia creado'});
        }
    });
}

export {
    crearMateria
}

