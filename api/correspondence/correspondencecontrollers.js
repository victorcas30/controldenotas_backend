import { 
    correspondenceReceived,
    recieviedCorresponseByUser,
    recieviedCorresponseById,
    editCorrespondenceById,
    deleteCorrespondence,
    recieviedCorresponseByDepto,
    asignCorrespondence,
    receiveCorrespondence,
    returnCorrespondenceToanohterDepartment,
    correspondenceAsignedToUser
 } from "./correspondenceservice.js";

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

const getCorrespondenceRecieviedByDepto = (req,res) =>{
    const values = Object.values(req.params);
    recieviedCorresponseByDepto(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });

}

const setAssignCorrespondence = (req,res) =>{
    const values = req.body;
    asignCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al Asignar la correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Correspondencia asignada'});
        }
    });
}

const setReceiveCorrespondence = (req,res)=>{
    const values = req.body;
    receiveCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al recibir correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Correspondencia recibida'});
        }
    });
}

const setReturnCorrespondenceToanohterDepartment = (req,res)=>{
    const values = Object.values(req.body);
    returnCorrespondenceToanohterDepartment(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al devolver correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Correspondencia devuelta'});
        }
    });
}

const getCorrespondenceAsignedToUser = (req,res)=>{
    const values = Object.values(req.params);
    correspondenceAsignedToUser(values,(error,result)=>{
        if(error){
           res.status(500).json({success:false,message:'Error al traer correspondencia'});
        }else{
           res.status(200).json({success:true,correspondence:result});
        }
    });
}

export {
    createCorrespondenceReceived,
    getCorrespondenceRecieviedByUser,
    getCorrespondenceRecieviedById,
    setEditCorrespondenceById,
    deleteCorrespondenceId,
    getCorrespondenceRecieviedByDepto,
    setAssignCorrespondence,
    setReceiveCorrespondence,
    setReturnCorrespondenceToanohterDepartment,
    getCorrespondenceAsignedToUser
};