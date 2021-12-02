import { 
    recados,
    myRecados,
    editarRecados,
    asignarRecados,
    asignareliminarRecados,
    recadosConsultaHistorial 
} from "./recadosservice.js";

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
    let msg = "";
    asignareliminarRecados(values,(error,result)=>{
        if(error){
            if(values.opcion === "a") msg = "Error al asignar el recado";
            if(values.opcion === "e") msg = "Error al eliminar el recado";
            if(values.opcion === "d") msg = "Error al devolver el recado";
            res.status(500).json({success:false,message:msg});
        }else{
            if(values.opcion === "a") msg = "Recado asignado";
            if(values.opcion === "e") msg = "Recado eliminado";
            if(values.opcion === "d") msg = "Recado devuelto";
            res.status(200).json({success:true,message:msg});
        }
    });
}

const getRecadosConsultaHistorial = (req,res) =>{
    const values = req.params;
    recadosConsultaHistorial(values,(error,result)=>{
        if(error){
            return res.status(500).json({success:false,recados:[]});
        }
            return res.status(200).json({success:true,recados:result});
    });
}

export {
    createRecado,
    getMyRecados,
    setEditarRecado,
    getAsignarRecados,
    setAsignarEliminarRecados,
    getRecadosConsultaHistorial
}