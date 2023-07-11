import { insertarTrimestre,getTrimestres,getUnTrimestre,updateTrimestre,deleteTrimestre } from "./trimestresServices.js";

const crearTrimestre = (req,res)=>{
    const values = Object.values(req.body);
    insertarTrimestre(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear trimestre'});
        }else{
            res.status(200).json({success:true,message:'Trimestre registrado'});
        }
    });
}

const getLosTrimestres = (req,res)=>{
    getTrimestres((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,trimestres:result});
        }
    });
}

const getTrimestre = (req,res) =>{
    const values = Object.values(req.params);
    getUnTrimestre(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,trimestre:result});
        }
    });
}

const setUpdateTrimestre = (req,res)=>{
    const values = req.body;
    updateTrimestre(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar trimestre'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}
const setDeleteTrimestre = (req,res)=>{
    const values = req.body;
    deleteTrimestre(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al eliminar trimestre'});
        }else{
            res.status(200).json({success:true,message:'Trimestre eliminado'});
        }
    });
}

export {
    crearTrimestre,
    getLosTrimestres,
    getTrimestre,
    setUpdateTrimestre,
    setDeleteTrimestre
}

