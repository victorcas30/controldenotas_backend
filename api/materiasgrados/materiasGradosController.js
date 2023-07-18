import {insertarGradoConMaterias,materiasConYSinGrados,eliminarGradoConMaterias,insertarGrado,getGrados,getUnGrado,updateGrado,deleteGrado } from "./materiasGradosServices.js";

const insertarElGradoConSusMaterias = async(req,res,next)=>{
    const respuesta = await insertarGradoConMaterias(req.body);
    if(respuesta){
        return res.status(200).json({msg:"Materias registradas"});
    }else{
        return res.status(500).json({msg:"Se produjo un error al registrar materias"});
        next();
    }
}

const getMateriasConYSinGrados = async(req,res)=>{
    const {idGrado} = req.params;
    try{
        const result = await materiasConYSinGrados(idGrado);
        return res.status(200).json({materias:result});
    }catch(error){
       return res.status(500).json({msg:"Ocurrió un error"});
    }
}

const crearGrado = (req,res)=>{
    const values = Object.values(req.body);
    insertarGrado(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear grado'});
        }else{
            res.status(200).json({success:true,message:'Grado registrado'});
        }
    });
}

const getLosGrados = (req,res)=>{
    getGrados((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,grados:result});
        }
    });
}

const getGrado = (req,res) =>{
    const values = Object.values(req.params);
    getUnGrado(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,grado:result});
        }
    });
}

const setUpdateGrado = (req,res)=>{
    const values = req.body;
    updateGrado(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar grado'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}
const setDeleteGrado = (req,res)=>{
    const values = req.body;
    deleteGrado(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al eliminar grado'});
        }else{
            res.status(200).json({success:true,message:'Grado eliminado'});
        }
    });
}

export {
    insertarElGradoConSusMaterias,
    getMateriasConYSinGrados,
    crearGrado,
    getLosGrados,
    getGrado,
    setUpdateGrado,
    setDeleteGrado
}

