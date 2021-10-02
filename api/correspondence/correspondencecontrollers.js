import { correspondenceReceived } from "./correspondenceservice.js";

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

export {createCorrespondenceReceived};