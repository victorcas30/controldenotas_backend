import { correspondenceReceived,recieviedCorresponseByUser,recieviedCorresponseById,editCorrespondenceById,deleteCorrespondence } from "./correspondenceservice.js";

const createCorrespondenceReceived = (req,res)=>{
    const values = Object.values(req.body);
    correspondenceReceived(values,(error,result)=>{
        if(error){
            const response = {insertId:0,message:'Error al registrar correspondencia'}
            res.status(500).json({success:false,result:response});
        }else{
            const response = {insertId:result.insertId,message:'Correspondencia Registrada'}
            res.status(200).json({success:true,result:response});
        }
    });
}

const getCorrespondenceRecieviedByUser = (req,res) =>{
    const values = Object.values(req.params);
    recieviedCorresponseByUser(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });

}

const getCorrespondenceRecieviedById = (req,res) =>{
    const values = Object.values(req.params);
    recieviedCorresponseById(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });

}

const setEditCorrespondenceById = (req,res)=>{
    const values = Object.values(req.body);
    editCorrespondenceById(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al guardar los cambios'});
        }else{
            res.status(200).json({success:true,message:'Se han guardado los cambios'});
        }
    });
}

const deleteCorrespondenceId = (req,res)=>{
    const values = Object.values(req.body);
    deleteCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al eliminar'});
        }else{
            if(result.affectedRows > 0){
                res.status(200).json({success:true,message:'Registro Eliminado'});
            }else{
                res.status(200).json({success:false,message:'No se puede eliminar el registro'});
            }
        }
    })
}

export {createCorrespondenceReceived,getCorrespondenceRecieviedByUser,getCorrespondenceRecieviedById,setEditCorrespondenceById,deleteCorrespondenceId};