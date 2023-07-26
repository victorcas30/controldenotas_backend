import { crearMaestroService,getMaestrosServices,getUnMaestroServices,updateMaestroServices,deleteMaestroServices } from "./servicesMaestros.js";

const crearMaestros = async(req,res)=>{
    try{
        const values = Object.values(req.body);
        const result = await crearMaestroService(values);
        res.status(200).json({ok:true,mensaje:"Maestro registrado"});
    }catch(error){
        res.status(500).json({ok:false,mensaje:"Ocurrió un error"});
    }
}
const getMaestros = async(req,res)=>{
    try{
       const result = await getMaestrosServices();
       res.status(200).json({ok:true,maestros:result});
    }catch(error){
        res.status(500).json({ok:false,mensaje:"Ocurrió un error"});
    }
}

const getUnMaestro = async(req,res)=>{
    try{
       const values = Object.values(req.params);
       const result = await getUnMaestroServices(values);
       res.status(200).json({ok:true,maestro:result});
    }catch(error){
        res.status(500).json({ok:false,mensaje:"Ocurrió un error"});
    }
}

const updateMaestros = async(req,res)=>{
    try{
        const values = Object.values(req.body);
        const result = await updateMaestroServices(values);
        res.status(200).json({ok:true,mensaje:"Cambios realizados"});
    }catch(error){
        res.status(500).json({ok:false,mensaje:"Ocurrió un error"});
    }
}

const deleteMaestros = async(req,res)=>{
    try{
        const values = Object.values(req.body);
        const result = await deleteMaestroServices(values);
        res.status(200).json({ok:true,mensaje:"Maestro Eliminado"});
    }catch(error){
        res.status(500).json({ok:false,mensaje:"Ocurrió un error"});
    }
}



export{
    crearMaestros,
    getMaestros,
    getUnMaestro,
    updateMaestros,
    deleteMaestros
}