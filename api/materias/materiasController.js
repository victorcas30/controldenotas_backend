import { insertarMateria,getMaterias,getUnaMateria,updateMateria } from "./materiasservices.js";

const crearMateria = (req,res)=>{
    const values = Object.values(req.body);
    insertarMateria(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear materia'});
        }else{
            res.status(200).json({success:true,message:'Materia registrada'});
        }
    });
}

const getLasMaterias = (req,res)=>{
    getMaterias((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,materias:result});
        }
    });
}

const getMateria = (req,res) =>{
    const values = Object.values(req.params);
    getUnaMateria(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}

const setUpdateMateria = (req,res)=>{
    const values = req.body;
    updateMateria(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar materia'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}

export {
    crearMateria,
    getLasMaterias,
    getMateria,
    setUpdateMateria
}

