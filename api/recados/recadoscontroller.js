import { recados,myRecados,editarRecados,asignarRecados,asignareliminarRecados } from "./recadosservice.js";

const createRecado = (req,res)=>{
    delete req.body.idRecado;
    const values = Object.values(req.body);
    recados(values,(error,result)=>{
        if(error){
            console.log(error);
            res.status(500).json({success:false,message:'Error al crear recado'});
        }else{
            res.status(200).json({success:true,message:'Recado creado exitosamente'});
        }
    });
}

const getMyRecados = (req,res) =>{
    const values = req.params;
    myRecados(values,(error,result)=>{
        if(error){
            return res.status(500).json({success:false,recados:[]});
        }
            return res.status(200).json({success:true,recados:result});
    });
}
const getAsignarRecados = (req,res) =>{
    asignarRecados((error,result)=>{
        if(error){
            return res.status(500).json({success:false,recados:[]});
        }
            return res.status(200).json({success:true,recados:result});
    });
}

const setEditarRecado = (req,res)=>{
    const values = req.body;
    editarRecados(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al editar recado'});
        }else{
            res.status(200).json({success:true,message:'Recado editado exitosamente'});
        }
    });
}

const setAsignarEliminarRecados = (req,res)=>{
    const values = req.body;
    asignareliminarRecados(values,(error,result)=>{
        if(error){
            const msg = (values.opcion === "a") ? 'Error al asignar recado a mensajero':'Error al eliminar el recado';
            res.status(500).json({success:false,message:msg});
        }else{
            const msg = (values.opcion === "a") ? 'Recado asignado':'Recado eliminado';
            res.status(200).json({success:true,message:msg});
        }
    });
}

export {
    createRecado,
    getMyRecados,
    setEditarRecado,
    getAsignarRecados,
    setAsignarEliminarRecados
}