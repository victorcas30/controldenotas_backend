import { insertarValor,getValores,getUnValor,updateValor,deleteValor } from "./valoresservices.js";

const crearValor = (req,res)=>{
    const values = Object.values(req.body);
    insertarValor(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear valor'});
        }else{
            res.status(200).json({success:true,message:'Valor registrado'});
        }
    });
}

const getLosValores = (req,res)=>{
    getValores((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,valores:result});
        }
    });
}

const getValor = (req,res) =>{
    const values = Object.values(req.params);
    getUnValor(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,valores:result});
        }
    });
}

const setUpdateValor = (req,res)=>{
    const values = req.body;
    updateValor(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar valor'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}

const setDeleteValor = (req,res)=>{
    const values = req.body;
    deleteValor(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al eliminar valor'});
        }else{
            res.status(200).json({success:true,message:'Valor eliminado'});
        }
    });
}

export {
    crearValor,
    getLosValores,
    getValor,
    setUpdateValor,
    setDeleteValor
}

