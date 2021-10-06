import { correspondenceReceived,recieviedCorresponseByUser,recieviedCorresponseById } from "./correspondenceservice.js";

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
            console.log(error);
            res.status(500).json({success:false,message:'Error al solicitar correspondencia'});
        }else{
            res.status(200).json({success:true,correspondence:result});
        }
    });

}

export {createCorrespondenceReceived,getCorrespondenceRecieviedByUser,getCorrespondenceRecieviedById};