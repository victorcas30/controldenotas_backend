import { documentstype } from "./documenttypesservice.js";

const getDocumentsType = (req,res)=>{
    documentstype((error,result)=>{
        if(error){
            return res.status(500).json({success:false,message:'Error al obtener tipos de documentos'});
        }else{
            return res.status(200).json({success:true,documentstype:result});
        }
    });
}

export {getDocumentsType};
