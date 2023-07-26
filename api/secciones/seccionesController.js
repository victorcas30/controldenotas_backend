import { insertarSeccion,getSecciones,getUnaSeccion,updateSeccion,deleteSeccion } from "./seccionesServices.js";

const crearSeccion = (req,res)=>{
    const values = Object.values(req.body);
    insertarSeccion(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear seccion'});
        }else{
            res.status(200).json({success:true,message:'Seccion registrado'});
        }
    });
}

const getLasSecciones = (req,res)=>{
    getSecciones((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,secciones:result});
        }
    });
}

const getSeccion = (req,res) =>{
    const values = Object.values(req.params);
    getUnaSeccion(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,secciones:result});
        }
    });
}

const setUpdateSeccion = (req,res)=>{
    const values = req.body;
    updateSeccion(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar seccion'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}
const setDeleteSeccion = (req,res)=>{
    const values = req.body;
    deleteSeccion(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al eliminar seccion'});
        }else{
            res.status(200).json({success:true,message:'Seccion eliminada'});
        }
    });
}

export {
    crearSeccion,
    getLasSecciones,
    getSeccion,
    setUpdateSeccion,
    setDeleteSeccion
}

