import { insertarInasistencia,getInasistencias,getUnaInasistencia,updateInasistencia,deleteInasistencia } from "./inasistenciasServices.js";

const crearInasistencia = (req,res)=>{
    const values = Object.values(req.body);
    insertarInasistencia(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear insasistencia'});
        }else{
            res.status(200).json({success:true,message:'Inasistencia registrada'});
        }
    });
}

const getLasInasistencias = (req,res)=>{
    getInasistencias((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,inasistencias:result});
        }
    });
}

const getInasistencia = (req,res) =>{
    const values = Object.values(req.params);
    getUnaInasistencia(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,inasistencias:result});
        }
    });
}

const setUpdateInasistencia = (req,res)=>{
    const values = req.body;
    updateInasistencia(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar inasistencia'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}
const setDeleteInasistencia = (req,res)=>{
    const values = req.body;
    deleteInasistencia(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al eliminar inasistencia'});
        }else{
            res.status(200).json({success:true,message:'Inasistencia eliminada'});
        }
    });
}

export {
    crearInasistencia,
    getLasInasistencias,
    getInasistencia,
    setUpdateInasistencia,
    setDeleteInasistencia
}

