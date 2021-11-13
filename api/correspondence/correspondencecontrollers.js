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
    correspondenceAsignedToUser,
    requestApproval,
    correspondenceToApproval,
    approveCorrespondence,
    correspondenceSend,
    correspondenceToApprovalCobros,
    sendCorrespondence,
    correspondenceInRoute,
    finishCorrespondence,
    editMensajeroCorrespondence,
    reporteCorrespondenciaPendiente,
    setcorrespondenciaRecibida,
    getUsersToReport,
    getCorresPendingByUserReport,
    procesaraccesos,
    addDeleteAccess
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

const setRequestApproval = (req,res)=>{
    const values = req.body;
    requestApproval(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar'});
        }else{
            res.status(200).json({success:true,message:'Solicitud enviada'});
        }
    });
}

const getcorrespondenceToApproval = (req,res)=>{
    const values = Object.values(req.params);
    correspondenceToApproval(values,(error,result)=>{
        if(error){
           res.status(500).json({success:false,message:'Error al traer correspondencia'});
        }else{
           res.status(200).json({success:true,correspondence:result});
        }
    });
}

const setApproveCorrespondence = (req,res)=>{
    const values = req.body;
    approveCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,message:'Ahora usted es el responsable de esta correspondencia'});
        }
    });
}
const setCorrespondenceSend = (req,res)=>{
    const values = req.body;
    correspondenceSend(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al registrar envío de correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Se ha registrado el envío'});
        }
    });
}

const getcorrespondenceToApprovalCobros = (req,res)=>{
    const values = Object.values(req.params);
    correspondenceToApprovalCobros(values,(error,result)=>{
        if(error){
           res.status(500).json({success:false,message:'Error al traer correspondencia'});
        }else{
           res.status(200).json({success:true,correspondence:result});
        }
    });
}

const setSendCorrespondence = (req,res)=>{
    const values = req.body;
    sendCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al enviar la correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Correspondencia registrada como despachada'});
        }
    });
}

const getCorrespondenceInRoute = (req,res) =>{
    const values = Object.values(req.params);
    correspondenceInRoute(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondenceinroute:result});
        }
    });
}

const setFinishCorrespondence = (req,res) =>{
    const values = req.body;
    finishCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al finalizar correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Correspondencia finalizada'});
        }
    });
}
const setEditMensajeroCorrespondence = (req,res) =>{
    const values = req.body;
    editMensajeroCorrespondence(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al cambiar correspondencia'});
        }else{
            res.status(200).json({success:true,message:'Mensajero cambiado'});
        }
    });
}

const getCorrespondencePendienteReport = (req,res) =>{
    reporteCorrespondenciaPendiente((error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });

}
const setGetCorrespondencePendienteReport = (req,res) =>{
    const values = Object.values(req.params);
    setcorrespondenciaRecibida(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });

}
const setGetUsersToReport = (req,res) =>{
    getUsersToReport((error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar usuarios'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}
const setGetCorresPendingByUserReport = (req,res) =>{
    const values = Object.values(req.params);
    getCorresPendingByUserReport(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar usuarios'});
        }else{
            res.status(200).json({success:true,correspondencia:result});
        }
    });
}

const getAccesosByRol = (req,res) =>{
    const values = Object.values(req.params);
    procesaraccesos(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al solicitar accesos'});
        }else{
            res.status(200).json({success:true,accesos:result});
        }
    });
}

const setAddDeleteAccesos = (req,res)=>{
    const values = Object.values(req.body);
    addDeleteAccess(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la acción requerida'});
        }else{
            res.status(200).json({success:true,message:'Se ha registrado el envío'});
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
    getCorrespondenceAsignedToUser,
    setRequestApproval,
    getcorrespondenceToApproval,
    setApproveCorrespondence,
    setCorrespondenceSend,
    getcorrespondenceToApprovalCobros,
    setSendCorrespondence,
    getCorrespondenceInRoute,
    setFinishCorrespondence,
    setEditMensajeroCorrespondence,
    getCorrespondencePendienteReport,
    setGetCorrespondencePendienteReport,
    setGetUsersToReport,
    setGetCorresPendingByUserReport,
    getAccesosByRol,
    setAddDeleteAccesos
};